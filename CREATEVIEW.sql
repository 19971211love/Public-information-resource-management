CREATE FORCE VIEW "PUBLIC"."LEADERSVIEW"("Ա�����","����","��������","����","����","���֤��","������ò","�������ű��","���벿��ʱ��","ְ�����","ְ��","��ҵѧУ","��ҵ����","ѧ��","רҵ","��ַ","��ϵ��ʽ","�ڸ�״̬","���ʵȼ����","Ӧ������")
AS
 SELECT  "Ա��������Ϣ".staffID,name,birthday,birthplace,Nation,Identification,political,departmentid,enterdate,Dutyid,title,graduationSchool,graduationDate,degree,major,address,contactway,positionstatus,WAGESCALEID,REALWAGE
FROM "Ա��������Ϣ","���ʼƷ���Ϣ"
WHERE "Ա��������Ϣ".staffID = "���ʼƷ���Ϣ".staffID;

CREATE FORCE VIEW "PUBLIC"."LEADERSVIEW_1506"("Ա�����","����","��������","����","����","���֤��","������ò","���벿��ʱ��","ְ�����","ְ��","��ҵѧУ","��ҵ����","ѧ��","רҵ","��ַ","��ϵ��ʽ","�ڸ�״̬","���ʵȼ����","Ӧ������")
AS
SELECT  "Ա�����","����","��������","����","����","���֤��","������ò","���벿��ʱ��","ְ�����","ְ��","��ҵѧУ","��ҵ����","ѧ��","רҵ","��ַ","��ϵ��ʽ","�ڸ�״̬","���ʵȼ����","Ӧ������"
FROM "LEADERSVIEW"
WHERE "LEADERSVIEW"."�������ű��" = 1506;

CREATE FORCE VIEW "PUBLIC"."WAGEVIEW"("ְ�����","ְ������","���ʵȼ�","���","���ʵȼ�����","��н","����","����","����","����","���ϱ��ս�","ҽ�Ʊ��ս�","ס��������")
AS
SELECT  dutyid,dutyname,"ְ����Ϣ".wagescaleid,introduction,wagescalename,basicsalary,subsidy,bonus,carsubsidy,housesubsidy,pension,medicalinsurance,houseprovidentfund
FROM "ְ����Ϣ","���ʱ�׼"
WHERE "ְ����Ϣ".wagescaleid = "���ʱ�׼".wagescaleid

;
