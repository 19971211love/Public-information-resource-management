CREATE ROLE "DATABASEMANGER";
GRANT SELECT,INSERT,UPDATE,DELETE
ON TABLE "Ա��������Ϣ","��׼��Ϣ","���ʼƷ���Ϣ","������Ϣ","ְ����Ϣ","������Ϣ"
TO "DATABASEMANGER"

CREATE ROLE "WORKERS";
GRANT SELECT
ON TABLE "Ա��������Ϣ","���ʱ�׼","���ʼƷ���Ϣ","������Ϣ","ְ����Ϣ","������Ϣ"
TO "WORKERS";
GRANT UPDATE
ON TABLE "Ա��������Ϣ"
TO "WORKERS";

CREATE ROLE "LEADERS";
GRANT SELECT
ON TABLE "Ա��������Ϣ","���ʱ�׼","���ʼƷ���Ϣ","������Ϣ","ְ����Ϣ","������Ϣ"
TO "LEASERS";
GRANT UPDATE,DELETE,INSERT
ON TABLE "LEADERSVIEW"
TO "LEADRRS";

