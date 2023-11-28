// LabStaffPage.js
import React, { useState } from 'react';
import styles from './labstaff.module.css';
import image from '../assets/student.png'

const labReports = [
  'Report 1',
  'Report 2',
  'Report 3',
  'Report 4',
  // Add more lab reports as needed
];

function LabStaff() {
  const [rollNo, setRollNo] = useState('');
  const [studentInfo, setStudentInfo] = useState(null);
  const [selectedReports, setSelectedReports] = useState([]);
  const [file, setFile] = useState(null);

  const handleSearch = () => {
    // Perform API call to fetch student details based on roll number
    // For this example, using placeholder data
    const studentData = {
      name: 'Praveen',
      photo: 'https://via.placeholder.com/150', // Replace with the actual URL of the student's photo
      branch: 'Electrical engineering',
    };

    setStudentInfo(studentData);
  };

  const handleReportCheckboxChange = (report) => {
    const updatedReports = selectedReports.includes(report)
      ? selectedReports.filter((selectedReport) => selectedReport !== report)
      : [...selectedReports, report];

    setSelectedReports(updatedReports);
  };

  const handleFileUpload = (e) => {
    const uploadedFile = e.target.files[0];
    setFile(uploadedFile);
  };

  return (
    <div className={styles['labstaffpage']}>
    <h1>Lab Staff Page</h1>

    <div className={styles['searchstudent']}>
      <label>Enter Roll Number:</label>
      <input
        type="text"
        value={rollNo}
        onChange={(e) => setRollNo(e.target.value)}
      />
      <button onClick={handleSearch}>Search</button>
    </div>

    {studentInfo && (
      <div className={styles['studentinfo']}>
        <div className={styles['infocontainer']}>
          <img
            src={image}
            alt={studentInfo.name}
            className={styles['studentphoto']}
          />
          <div className={styles['detailscontainer']}>
            <h2>{studentInfo.name}'s Details</h2>
            <p>Branch: {studentInfo.branch}</p>
          </div>
        </div>

        <div className={styles['labreports']}>
          <h3>Lab Reports</h3>
          <ul>
            {labReports.map((report) => (
              <li key={report}>
                <label>
                  <input
                    type="checkbox"
                    checked={selectedReports.includes(report)}
                    onChange={() => handleReportCheckboxChange(report)}
                  />
                  {report}
                </label>
              </li>
            ))}
          </ul>
        </div>

        {selectedReports.length > 0 && (
          <div className={styles['fileupload']}>
            <h3>Upload Reports</h3>
            <input
              type="file"
              accept=".pdf"
              onChange={handleFileUpload}
            />
            {/* Add a submit button or further logic for file upload */}
          </div>
        )}
      </div>
    )}
  </div>
  );
}

export default LabStaff;
