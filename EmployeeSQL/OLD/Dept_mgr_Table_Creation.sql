CREATE TABLE "Dept_Manager" (
    "dept_no" varchar(4)   NOT NULL,
    "emp_no" varchar   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "emp_no"
     )
);