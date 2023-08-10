# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2023.

import sys, csv, re

codes = [{"code":"3784020","system":"multilex"},{"code":"49838020","system":"multilex"},{"code":"49841020","system":"multilex"},{"code":"49842020","system":"multilex"},{"code":"49845020","system":"multilex"},{"code":"49846020","system":"multilex"},{"code":"55369020","system":"multilex"},{"code":"59429020","system":"multilex"},{"code":"59430020","system":"multilex"},{"code":"67280020","system":"multilex"},{"code":"67281020","system":"multilex"},{"code":"68803020","system":"multilex"},{"code":"71733020","system":"multilex"},{"code":"71736020","system":"multilex"},{"code":"97872020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('tricyclic-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["tricyclic-adds-trimipramine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["tricyclic-adds-trimipramine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["tricyclic-adds-trimipramine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
