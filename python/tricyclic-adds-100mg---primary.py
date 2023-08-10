# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2023.

import sys, csv, re

codes = [{"code":"3674020","system":"multilex"},{"code":"48479020","system":"multilex"},{"code":"48484020","system":"multilex"},{"code":"48490020","system":"multilex"},{"code":"48496020","system":"multilex"},{"code":"48507020","system":"multilex"},{"code":"48516020","system":"multilex"},{"code":"48522020","system":"multilex"},{"code":"48533020","system":"multilex"},{"code":"503021","system":"multilex"},{"code":"50946020","system":"multilex"},{"code":"54669020","system":"multilex"},{"code":"55688020","system":"multilex"},{"code":"57824020","system":"multilex"},{"code":"58949020","system":"multilex"},{"code":"59132020","system":"multilex"},{"code":"59528020","system":"multilex"},{"code":"61097020","system":"multilex"},{"code":"61463020","system":"multilex"},{"code":"62275020","system":"multilex"},{"code":"62362020","system":"multilex"},{"code":"62912020","system":"multilex"},{"code":"67152020","system":"multilex"},{"code":"75331020","system":"multilex"},{"code":"97461020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('tricyclic-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["tricyclic-adds-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["tricyclic-adds-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["tricyclic-adds-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
