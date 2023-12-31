import os

def process(root):
    """Method grabs the results of the top scoring docked pose, and prints the result with its ZINC identifier and tranche identifier to the results file."""
    for file in os.listdir(root+"/Output/"):
        if file[-5:] == "pdbqt":
            lines = []

            with open(f'{root}/Output/{file}', "r") as new_file:
                lines.append(new_file.readline())
                lines.append(new_file.readline())
                lines.append(new_file.readline())
            
            lines[1] = lines[1].strip().split()
            lines[2] = lines[2].strip().split()
            
            filename = file.split(".")
            filename = filename[0]+filename[1]

            ZINC_name = lines[2][3]
            Vina_score = lines[1][3]
            #ignoring the first line from the file?

            new_line_in_file = ",".join([ZINC_name,filename,Vina_score])
            with open(root+"/Output/results", "a") as results_file:
                results_file.write(new_line_in_file + "\n")
