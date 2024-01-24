
import aul
from aul.processor_configs import CONFIGS
import time
import logging
import random
import json
import os
import shutil

cva6_tlb_config = CONFIGS['cva6_tlb']
SEED = 710

random.seed(SEED)

TIME_LOGGER = {}

def log_timestamp(action, curr_time):
    run_time = time.time() - curr_time
    curr_time = time.time()
    TIME_LOGGER[action] = run_time


def gen_model():
    CURR_TIME = time.time()

    databasedir = "cva6-model-runs/tlb_traces"

    FORMAT = '%(name)s::%(levelname)s: %(message)s'
    LOGFILE = 'aul.log'
    logging.basicConfig(format=FORMAT, filename=LOGFILE, level=logging.INFO)
    print(f"Logging to {LOGFILE}")

    '''
        Random simulation and genmseq
    '''
    # Call the simulation script
    aul.run_simulate(cva6_tlb_config, f"{databasedir}/", 20)
    log_timestamp("simulation0", CURR_TIME)
    aul.run_genmseq(cva6_tlb_config, [f"{databasedir}/test_{i}/" for i in range(20)])
    log_timestamp("mseq_generation0", CURR_TIME)

    '''
        Targetted simulation and genmseq
    '''
    instructions = [cva6_tlb_config.gen_instruction_sequence_script([1, 1])[1]]
    cva6_tlb_config.generate_test(f"{databasedir}/custom_0/", lambda: cva6_tlb_config.make_testblock_by_program(instructions))
    log_timestamp("simulation1", CURR_TIME)
    aul.run_genmseq(cva6_tlb_config, [f"{databasedir}/custom_0/"])
    log_timestamp("mseq_generation1", CURR_TIME)

    '''
        Guard synthesis
    '''
    aul.run_consynth(cva6_tlb_config, databasedir, 
        # [f"{databasedir}/custom_0"] +
        [f"{databasedir}/test_{i}/" for i in range(20)],
        "", "content", True)
    log_timestamp("guard_synthesis", CURR_TIME)

    '''
        Equivalence proof
    '''
    # Change directory to the equivalence proof directory
    cdir = os.getcwd()
    os.chdir("cva6-model/verification/tlb")
    os.system("time sby -f proofs_tlb.sby taskBMC15_equiv_tlb")
    os.chdir(cdir)
    log_timestamp("equiv_proof", CURR_TIME)

    jlog = json.dumps(TIME_LOGGER, indent=4)
    with open("{}/time.log".format(databasedir), 'w') as loghandle:
        loghandle.write(jlog)

    if os.path.exists("out"):
        shutil.rmtree("out")
    shutil.copytree(databasedir, "out")

    return jlog

if __name__ == "__main__":
    print(gen_model())