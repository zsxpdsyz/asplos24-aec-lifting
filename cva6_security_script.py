import os
import shutil
import time, datetime
import tabulate
import subprocess

times = []
tests = [
    "test0"
    # , "test1", "test2", "test3", "test4", "test5", "test6", "test7", "test8", "test9"
]

dut_dir1 = "proofs_lsu_taskBMC30_ni_lsu"
mod_dir1 = "proofs_lsu_taskBMC30_ni_model_lsu"
dut_dir2 = "proofs_lsu_taskBMC40_ni_lsu"
mod_dir2 = "proofs_lsu_taskBMC40_ni_model_lsu"

test_dir = f"{os.getcwd()}/cva6-model/verification/cva6_security/"

for (i, test) in enumerate(tests):
    print("Running test: " + test)
    shutil.copyfile(f"{test_dir}/{test}/cva6_lsu_formal.v", f"{test_dir}/cva6_lsu_formal.v")
    
    # Test with design
    pretime = time.time()
    if i < 8:
        subprocess.Popen(['time', 'sby', '-f', 'proofs_lsu.sby', 'taskBMC30_ni_lsu'], cwd=test_dir).wait()
    else:
        subprocess.Popen(['time', 'sby', '-f', 'proofs_lsu.sby', 'taskBMC40_ni_lsu'], cwd=test_dir).wait()
    posttime = time.time()
    dut_time = posttime - pretime
    print(f"For test: {test} DUT time: {dut_time}")

    # Save the results
    if i < 8:
        os.system(f"cp -r {test_dir}/{dut_dir1} {test_dir}/{test}/")
    else:
        os.system(f"cp -r {test_dir}/{dut_dir2} {test_dir}/{test}/")

    # Test on model
    pretime = time.time()
    if i < 8:
        subprocess.Popen(['time', 'sby', '-f', 'proofs_lsu.sby', 'taskBMC30_ni_model_lsu'], cwd=test_dir).wait()
    else:
        subprocess.Popen(['time', 'sby', '-f', 'proofs_lsu.sby', 'taskBMC40_ni_model_lsu'], cwd=test_dir).wait()

    posttime = time.time()
    model_time = posttime - pretime
    print(f"For test: {test} Model time: {model_time}")

    # Save the results
    if i < 8:
        os.system(f"cp -r {test_dir}/{mod_dir1} {test_dir}/{test}/")
    else:
        os.system(f"cp -r {test_dir}/{mod_dir2} {test_dir}/{test}/")

    # Save the times
    times.append([
        test, dut_time, model_time
    ])



with open("cva6_sec_times.log", 'w') as f:
    f.write("// Generated by cva6_security_script.py at {}\n\n\n".format(datetime.datetime.now()))

    table = tabulate.tabulate(times, headers=["Test", "Design Runtime (s)", "Model Runtime (s)"])
    f.write(table)