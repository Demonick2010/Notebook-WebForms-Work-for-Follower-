<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="add_contact.aspx.cs" Inherits="Notebook.add_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="row small-spacing">
        <div class="col-lg-12 col-xs-12">
            <div class="box-content card white">
                <h4 class="box-title">Create new note</h4>

                <div class="card-content">
                    <form>

                        <div class="form-group">
                            <label for="FirstName">First Name</label>
                            <asp:TextBox ID="FirstName" runat="server" class="form-control" placeholder="Enter your First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="FirstName" ForeColor="Red" ToolTip="Please enter your First Name" Display="Dynamic">* Please enter your First Name</asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="SecondName">Second Name</label>
                            <asp:TextBox ID="SecondName" runat="server" class="form-control" placeholder="Enter your Second Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSecondName" runat="server" ControlToValidate="SecondName" ForeColor="Red" ToolTip="Please enter your Second Name" Display="Dynamic">* Please enter your Second Name</asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="LastName">Last Name</label>
                            <asp:TextBox ID="LastName" runat="server" class="form-control" placeholder="Enter your Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="LastName" ForeColor="Red" ToolTip="Please enter your Last Name" Display="Dynamic">* Please enter your Last Name</asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="Birthday">Birthday</label>
                            <asp:TextBox ID="Birthday" runat="server" TextMode="Date" class="form-control" placeholder="Enter your Birthday"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="PhoneNumber">Phone Number</label>
                            <asp:TextBox ID="PhoneNumber" runat="server" class="form-control" placeholder="Enter your phone number"></asp:TextBox>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="PhoneNumber" ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid phone number" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$">* Please enter a valid phone number</asp:RegularExpressionValidator>
                        </div>

                        <div class="form-group">
                            <label for="Email">Email</label>
                            <asp:TextBox ID="Email" runat="server" class="form-control" placeholder="Enter your email"></asp:TextBox>
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                                ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid email address"
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            * Please enter a valid email address</asp:RegularExpressionValidator>
                        </div>

                        <asp:Button ID="SubmitNote" runat="server" Text="Submit" class="btn btn-primary btn-sm waves-effect waves-light" OnClick="SubmitNote_Click" />

                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
