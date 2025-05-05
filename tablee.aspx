<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Bài Tập 03</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      text-align: center;
    }
    th, td {
      border: 1px solid black;
      padding: 6px;
    }
    th {
      background-color: #f9f9f9;
    }
  </style>
</head>
<body>
  <h3><strong>BÀI TẬP 03:</strong> Sử dụng HTML Table, tạo trang web trình bày dữ liệu như mẫu bên dưới</h3>
  <table>
    <tr>
      <th rowspan="3">Student</th>
      <th colspan="5">Exam</th>
      <th colspan="5">2nd Exam</th>
      <th colspan="2">Final Grade</th>
    </tr>
    <tr>
      <th rowspan="2">Q1</th>
      <th rowspan="2">Q2</th>
      <th rowspan="2">Q3</th>
      <th rowspan="2">Grade</th>
      <th rowspan="2">Q1</th>
      <th rowspan="2">Q2</th>
      <th rowspan="2">Q3</th>
      <th rowspan="2">Grade</th>
      <th rowspan="2">NR</th>
      <th rowspan="2">R</th>
    </tr>
    <tr></tr>
    <tr>
      <td>Code</td>
      <td colspan="1">8</td>
      <td>7</td>
      <td>5</td>
      <td></td>
      <td>6</td>
      <td>7</td>
      <td>8</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>80549061<br>John</td>
      <td>70%</td>
      <td>100%</td>
      <td>100%</td>
      <td>17.6</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td>17.6</td>
      <td>18</td>
    </tr>
    <tr>
      <td>80549062<br>Mary</td>
      <td>10%</td>
      <td>50%</td>
      <td>50%</td>
      <td>6.8</td>
      <td>100%</td>
      <td>100%</td>
      <td>50%</td>
      <td>16.5</td>
      <td>16.5</td>
      <td>17</td>
    </tr>
    <tr>
      <td>80549063<br>Claire</td>
      <td></td>
      <td>50%</td>
      <td>50%</td>
      <td></td>
      <td>50%</td>
      <td>50%</td>
      <td>50%</td>
      <td>10.0</td>
      <td>10.0</td>
      <td>10</td>
    </tr>
  </table>
</body>
</html>