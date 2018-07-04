CREATE FORCE VIEW "PUBLIC"."LEADERSVIEW"("员工编号","姓名","出生年月","籍贯","民族","身份证号","政治面貌","所属部门编号","进入部门时间","职务代码","职称","毕业学校","毕业日期","学历","专业","地址","联系方式","在岗状态","工资等级编号","应发工资")
AS
 SELECT  "员工基本信息".staffID,name,birthday,birthplace,Nation,Identification,political,departmentid,enterdate,Dutyid,title,graduationSchool,graduationDate,degree,major,address,contactway,positionstatus,WAGESCALEID,REALWAGE
FROM "员工基本信息","工资计发信息"
WHERE "员工基本信息".staffID = "工资计发信息".staffID;

CREATE FORCE VIEW "PUBLIC"."LEADERSVIEW_1506"("员工编号","姓名","出生年月","籍贯","民族","身份证号","政治面貌","进入部门时间","职务代码","职称","毕业学校","毕业日期","学历","专业","地址","联系方式","在岗状态","工资等级编号","应发工资")
AS
SELECT  "员工编号","姓名","出生年月","籍贯","民族","身份证号","政治面貌","进入部门时间","职务代码","职称","毕业学校","毕业日期","学历","专业","地址","联系方式","在岗状态","工资等级编号","应发工资"
FROM "LEADERSVIEW"
WHERE "LEADERSVIEW"."所属部门编号" = 1506;

CREATE FORCE VIEW "PUBLIC"."WAGEVIEW"("职务代码","职务名称","工资等级","简介","工资等级名称","底薪","补贴","奖金","车补","房补","养老保险金","医疗保险金","住房公积金")
AS
SELECT  dutyid,dutyname,"职务信息".wagescaleid,introduction,wagescalename,basicsalary,subsidy,bonus,carsubsidy,housesubsidy,pension,medicalinsurance,houseprovidentfund
FROM "职务信息","工资标准"
WHERE "职务信息".wagescaleid = "工资标准".wagescaleid

;
