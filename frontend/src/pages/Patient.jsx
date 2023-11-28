import React, { Component } from "react";
import Modal from "react-modal";
import "bootstrap/dist/css/bootstrap.css"; 
import "./home.css"; 
import student from '../assets/student.png';
import prescription from '../assets/prescription.png'

class Patient extends Component {
  constructor() {
    super();

    this.state = {
      student: {
        name: "Praveen prajapat",
        department: "Electrical Engineering",
        image: "student.jpg",
        age: 19,
        weight: "57 kg",
        height: "180 cm",
      },
      medicalData: this.generateMedicalData(), // Generating random medical data
      prescriptionModalIsOpen: false,
      currentPrescription: "",
    };
  }

  openPrescriptionModal = () => {
    this.setState({ prescriptionModalIsOpen: true });
  };

  closePrescriptionModal = () => {
    this.setState({ prescriptionModalIsOpen: false });
  };

  handlePrescriptionChange = (event) => {
    this.setState({ currentPrescription: event.target.value });
  };

  savePrescription = () => {
    // Implement the logic to save the prescription here.
    // You can update the medicalData state with the new prescription entry.
    this.closePrescriptionModal();
  };

  openPrescription = () => {
    this.setState({ prescriptionIsOpen: true });
  };

  closePrescription = () => {
    this.setState({ prescriptionIsOpen: false });
  };

  handlePrescription = (event) => {
    this.setState({ currentPres: event.target.value });
  };

  savePres = () => {
    // Implement the logic to save the prescription here.
    // You can update the medicalData state with the new prescription entry.
    this.closePrescription();
  };

  generateMedicalData = () => {
    const medicalData = [];
    for (let i = 0; i < 8; i++) {
      const entry = {
        date: `2023-10-${Math.floor(Math.random() * 31) + 1}`,
        doctorName: `Dr. ${String.fromCharCode(65 + Math.floor(Math.random() * 26))}`,
        prescription: "Prescription text",
        labReport: "lab_report.jpg",
      };
      medicalData.push(entry);
    }
    return medicalData;
  };

  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col-md-6">
            <div className="student-info mt-4">
              <div className="row">
                <div className="col-md-4">
                  <img src={student} alt="Student" className="img-fluid rounded-circle" />
                </div>
                <div className="col-md-8">
                  <h2>{this.state.student.name}</h2>
                  <p>Department: {this.state.student.department}</p>
                  <p>Age: {this.state.student.age}</p>
                  <p>Weight: {this.state.student.weight}</p>
                  <p>Height: {this.state.student.height}</p>
                </div>
              </div>
            </div>
          </div>
          <div className="col-md-6">
            <div className="prescription-section mt-4">
              <button className="btn btn-primary" onClick={this.openPrescription}>Write Prescription</button>
              <p> </p>
              <button className="btn btn-primary" onClick={this.openPrescription}>Pink slip</button>
              <p> </p>
              <button className="btn btn-primary" onClick={this.openPrescription}>Lab </button>
            </div>
          </div>
        </div>

        <div className="medical-data mt-4">
          <div className="row">
            {this.state.medicalData.map((data, index) => (
              <div key={index} className="col-md-3">
                <div className="card mb-3">
                  <div className="card-body">
                    <p className="card-text">Date: {data.date}</p>
                    <p className="card-text">Doctor: {data.doctorName}</p>
                    <button className="btn btn-primary" onClick={this.openPrescriptionModal}>Prescription</button>
                    <p> </p>
                    <button className="btn btn-primary" onClick={this.openPrescriptionModal}>Lab reports</button>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>

        <Modal
          isOpen={this.state.prescriptionModalIsOpen}
          onRequestClose={this.closePrescriptionModal}
        >
          <div className="modal-content" style={{justifyContent:'center'}}>
            <img src={prescription} width="1000px"></img>
            <button className="btn btn-primary mt-2" onClick={this.savePrescription}>Back</button>
          </div>
        </Modal>
        <Modal
          isOpen={this.state.prescriptionIsOpen}
          onRequestClose={this.closePrescription}
        >
          <div className="modal-content">
            <textarea
              rows="5"
              cols="50"
              value={this.state.currentPres}
              onChange={this.handlePrescription}
              className="form-control"
            ></textarea>
            <button className="btn btn-primary mt-2" onClick={this.savePres}>Done</button>
          </div>
        </Modal>
      </div>
    );
  }
}

export default Patient;
