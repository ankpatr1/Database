SELECT DISTINCT s.lastname
FROM Students s
WHERE s.sid IN (
  SELECT e.sid
  FROM Enrollments e
  JOIN Classes c ON e.classid = c.classid
  WHERE c.dept_code = 'CS'
)
AND s.sid IN (
  SELECT e.sid
  FROM Enrollments e
  JOIN Classes c ON e.classid = c.classid
  WHERE c.dept_code = 'MATH'
);
