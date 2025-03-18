select
  *
from
  ibmuser.emp;

select
  *
from
  ibmuser.dept;

SELECT
  FIRSTNME
from
  IBMUSER.EMP
WHERE
  JOB = 'MANAGER';

SELECT
  company
  , stock_num
  , menu_code
FROM
  customer c
  , orders o
  , items i
WHERE
  c.customer_num = o.customer_num
  AND o.order_num = i.order_num;

SELECT
  *
from
  ibmuser.emp;

SELECT
  lastname
  , workdept
  , salary
  , bonus
  , comm
FROM
  IBMUSER.EMP;

SELECT
  lastname
  , workdept
  , COALESCE(salary, 0) + COALESCE(bonus, 0) + COALESCE(comm, 0) AS total_compensation
FROM
  IBMUSER.EMP;


SELECT
  e.lastname
  , e.workdept
  , COALESCE(e.salary, 0) + COALESCE(e.bonus, 0) + COALESCE(e.comm, 0) AS total_compensation
  , d.deptname
FROM
  IBMUSER.EMP e
  JOIN IBMUSER.DEPT d
ON e.workdept = d.deptno;

WITH RankedCompensation AS (
  SELECT
    e.lastname
    , e.workdept
    , COALESCE(e.salary, 0) + COALESCE(e.bonus, 0) + COALESCE(e.comm, 0) AS total_compensation
    , d.deptname
    , RANK() OVER (
      PARTITION BY d.deptname
      ORDER BY
        COALESCE(e.salary, 0) + COALESCE(e.bonus, 0) + COALESCE(e.comm, 0) DESC
    ) AS rank
  FROM
    IBMUSER.EMP e
    JOIN IBMUSER.DEPT d
  ON e.workdept = d.deptno
)
SELECT
  lastname
  , workdept
  , total_compensation
  , deptname
FROM
  RankedCompensation
WHERE
  rank = 1;

SELECT
  d.deptname AS DEPTNAME
  , MAX(
    COALESCE(e.salary, 0) + COALESCE(e.bonus, 0) + COALESCE(e.comm, 0)
  ) AS MAX_COMPENSATION
FROM
  IBMUSER.EMP e
  JOIN IBMUSER.DEPT d
ON e.workdept = d.deptno
GROUP BY
  d.deptname
ORDER BY
  d.deptname;