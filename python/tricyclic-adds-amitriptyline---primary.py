# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2023.

import sys, csv, re

codes = [{"code":"48480020","system":"multilex"},{"code":"48485020","system":"multilex"},{"code":"48492020","system":"multilex"},{"code":"48497020","system":"multilex"},{"code":"48502020","system":"multilex"},{"code":"48508020","system":"multilex"},{"code":"48513020","system":"multilex"},{"code":"48517020","system":"multilex"},{"code":"48523020","system":"multilex"},{"code":"48528020","system":"multilex"},{"code":"48534020","system":"multilex"},{"code":"58950020","system":"multilex"},{"code":"70948020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('tricyclic-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["tricyclic-adds-amitriptyline---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["tricyclic-adds-amitriptyline---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["tricyclic-adds-amitriptyline---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
