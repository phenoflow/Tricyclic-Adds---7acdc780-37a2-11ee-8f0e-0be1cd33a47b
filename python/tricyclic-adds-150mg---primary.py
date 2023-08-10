# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2023.

import sys, csv, re

codes = [{"code":"19451020","system":"multilex"},{"code":"3701020","system":"multilex"},{"code":"48481020","system":"multilex"},{"code":"48486020","system":"multilex"},{"code":"48491020","system":"multilex"},{"code":"48498020","system":"multilex"},{"code":"48509020","system":"multilex"},{"code":"48518020","system":"multilex"},{"code":"48524020","system":"multilex"},{"code":"50948020","system":"multilex"},{"code":"55442020","system":"multilex"},{"code":"55687020","system":"multilex"},{"code":"57826020","system":"multilex"},{"code":"58951020","system":"multilex"},{"code":"61096020","system":"multilex"},{"code":"61465020","system":"multilex"},{"code":"62274020","system":"multilex"},{"code":"62276020","system":"multilex"},{"code":"62361020","system":"multilex"},{"code":"62363020","system":"multilex"},{"code":"62911020","system":"multilex"},{"code":"62913020","system":"multilex"},{"code":"67151020","system":"multilex"},{"code":"67153020","system":"multilex"},{"code":"67156020","system":"multilex"},{"code":"67282020","system":"multilex"},{"code":"75329020","system":"multilex"},{"code":"95021020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('tricyclic-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["tricyclic-adds-150mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["tricyclic-adds-150mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["tricyclic-adds-150mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
