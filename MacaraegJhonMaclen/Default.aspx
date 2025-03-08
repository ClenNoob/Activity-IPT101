<%@ Page Title="Student Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MacaraegJhonMaclen._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');

        body {
            background-color: #0d0d0d;
            color: #ffffff;
            font-family: 'Poppins', sans-serif;
        }

        .form-container {
            display: flex;
            gap: 20px;
        }

        .form-box {
            background: rgba(20, 20, 20, 0.9);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 12px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0px 0px 15px rgba(0, 204, 255, 0.5);
        }

        .form-title {
            font-size: 1.8rem;
            font-weight: 600;
            text-align: center;
            color: #00ccff;
            text-shadow: 0 0 8px rgba(0, 204, 255, 0.3);
        }

        .form-label {
            font-size: 0.95rem;
            font-weight: 500;
            color: #00ccff;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 1rem;
            padding: 8px;
            border-radius: 6px;
        }

        .form-control:focus {
            border-color: #00ccff;
            box-shadow: 0 0 8px rgba(0, 204, 255, 0.5);
            outline: none;
        }

        .form-select {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            color: dimgrey;
            font-size: 0.9rem;
            border-radius: 6px;
        }

        .btn-custom {
            background: linear-gradient(90deg, #00ccff, #0066ff);
            border: none;
            padding: 10px;
            font-size: 1rem;
            font-weight: 600;
            color: rgba(20, 20, 20, 0.9);
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
            transition: 0.3s;
            border-radius: 50px;
            width: 100%;
        }

        .btn-custom:hover {
            box-shadow: 0 0 15px rgba(0, 204, 255, 0.3);
            color: rgba(20, 20, 20, 0.9);
            transform: scale(1.05);
        }

        .additional-fields {
            width: 100%;
            max-width: 100%; 
            background: rgba(20, 20, 20, 0.9);
            backdrop-filter: blur(10px);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0, 204, 255, 0.5);
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        .additional-fields .mb-2 {
            width: 100%;
        }

        .additional-fields .form-control {
            width: 100% !important;
            display: block;
            max-width: 100%;
            flex-grow: 1;
        }


        .center-button {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>

    <main class="d-flex justify-content-center align-items-center" style="min-height: 90vh;">
        <div class="form-wrapper">
 
            <div class="form-container">
                <div class="form-box">
                    <h3 class="form-title">Student Registration</h3>
                    <p class="text-center text-muted mb-3" style="font-size: 0.85rem;">Join the digital world.</p>

                    <asp:Panel ID="pnlFirstBox" runat="server">
                        <div class="mb-2">
                            <label for="txtStudentID" class="form-label">Student ID</label>
                            <asp:TextBox ID="txtStudentID" runat="server" CssClass="form-control" Placeholder="Enter student ID"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtFullName" class="form-label">Full Name</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" Placeholder="Enter your full name"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtCourse" class="form-label">Course</label>
                            <asp:TextBox ID="txtCourse" runat="server" CssClass="form-control" Placeholder="Enter your course"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtYearLevel" class="form-label">Year Level</label>
                            <asp:TextBox ID="txtYearLevel" runat="server" CssClass="form-control" Placeholder="Enter your year level"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="ddlGender" class="form-label">Gender</label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select">
                                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </asp:Panel>
                </div>

                <div class="form-box">
                    <asp:Panel ID="pnlSecondBox" runat="server">
                        <div class="mb-3">
                            <label for="txtContactNumber" class="form-label">Contact No.</label>
                            <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control" Placeholder="Enter your contact number"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtEmail" class="form-label">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Enter your email"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtPassword" class="form-label">Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtConfirmPassword" class="form-label">Confirm Password</label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Confirm your password"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtDateOfBirth" class="form-label">Date of Birth</label>
                            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="txtAddress" class="form-label">Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" Placeholder="Enter your address"></asp:TextBox>
                        </div>
                    </asp:Panel>
                </div>
            </div>

            <div class="additional-fields">
                <asp:Panel ID="pnlAdditionalFields" runat="server">
                    <div class="mb-2">
                        <label for="txtGuardianName" class="form-label">Guardian Name</label>
                        <asp:TextBox ID="txtGuardianName" runat="server" CssClass="form-control" Placeholder="Enter guardian's name"></asp:TextBox>
                    </div>
                    <div class="mb-2">
                        <label for="txtGuardianContact" class="form-label">Guardian Contact No.</label>
                        <asp:TextBox ID="txtGuardianContact" runat="server" CssClass="form-control" Placeholder="Enter guardian's contact number"></asp:TextBox>
                    </div>
                    <div class="mb-2">
                        <label for="txtEmergencyContact" class="form-label">Emergency Contact</label>
                        <asp:TextBox ID="txtEmergencyContact" runat="server" CssClass="form-control" Placeholder="Enter emergency contact"></asp:TextBox>
                    </div>
                    <div class="center-button">
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-custom" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </main>
</asp:Content>
