# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2023.

import sys, csv, re

codes = [{"code":"49588020","system":"multilex"},{"code":"49589020","system":"multilex"},{"code":"53817020","system":"multilex"},{"code":"53818020","system":"multilex"},{"code":"54620020","system":"multilex"},{"code":"54621020","system":"multilex"},{"code":"54728020","system":"multilex"},{"code":"56942020","system":"multilex"},{"code":"56943020","system":"multilex"},{"code":"60464020","system":"multilex"},{"code":"60465020","system":"multilex"},{"code":"62179020","system":"multilex"},{"code":"62833020","system":"multilex"},{"code":"62834020","system":"multilex"},{"code":"63443020","system":"multilex"},{"code":"66765020","system":"multilex"},{"code":"68380020","system":"multilex"},{"code":"68383020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('tricyclic-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["tricyclic-adds-dosulepin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["tricyclic-adds-dosulepin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["tricyclic-adds-dosulepin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
