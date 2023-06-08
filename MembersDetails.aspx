<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MembersDetails.aspx.cs" Inherits="MembersDetails.MembersDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    .displayed1
{
    position: fixed;
    top: 275px;
    right: 341px;
}

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="jumbotron text-center">
  <h1>MembersDetails</h1>
</div>
  
<div class="container">
  

  <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>  
    </div>
    <div class="col-sm-4">       
        <asp:TextBox ID="txtname" runat="server" Height="31px" Width="240px" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2">   </div>

  </div><br />

    <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label2" runat="server" Text="PhoneNo"></asp:Label>  
    </div>
    <div class="col-sm-4">       
        <asp:TextBox ID="txtphno" runat="server" Height="31px" Width="240px" TextMode="Number"  CssClass="form-control" MaxLength="10"></asp:TextBox>
<%--        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="phno must be 10 digits" ControlToValidate="txtphno" MaximumValue="10"></asp:RangeValidator>--%>
    </div>
          <div class="col-sm-2">   </div>

  </div><br />

    <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label3" runat="server" Text="ID_Proof"></asp:Label>  
    </div>
    <div class="col-sm-4">  
        <asp:DropDownList ID="drdnidproof" runat="server">
                        <asp:ListItem Value="">--select--</asp:ListItem>
            <asp:ListItem Value="AdharCard">AdharCard</asp:ListItem>
            <asp:ListItem Value="PanCard">PanCard</asp:ListItem>
        </asp:DropDownList>
    </div>
          <div class="col-sm-2">   </div>

  </div><br />

    <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label4" runat="server" Text="Adhar_or_PanNo"></asp:Label>  
    </div>
    <div class="col-sm-4">       
        <asp:TextBox ID="txtadharpan" runat="server" Height="31px" Width="240px" CssClass="form-control"></asp:TextBox>

    </div>
          <div class="col-sm-2">   </div>

  </div><br />


    <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label5" runat="server" Text="MembersId"></asp:Label>  
    </div>
    <div class="col-sm-4">       
        <asp:TextBox ID="txtmemrid" runat="server" Height="31px" Width="240px"  CssClass="form-control"></asp:TextBox>
<%--        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="this feild is required" ControlToValidate="txtmemrid"></asp:RequiredFieldValidator>--%>
    </div>
          <div class="col-sm-2">   </div>

  </div><br />


    <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label6" runat="server" Text="JoiningDate"></asp:Label>  
    </div>
    <div class="col-sm-4">       
        <asp:TextBox ID="txtjoindate" runat="server" Height="31px" Width="240px" TextMode="date" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2">   </div>

  </div><br />
    
   
     <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Label ID="Label7" runat="server" Text="Mno"></asp:Label>  
    </div>
    <div class="col-sm-4">       
        <asp:TextBox ID="txtmno" runat="server" Height="31px" Width="240px" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2">   </div>

  </div><br /> 

    
     <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
       
        <a href="AddnewPage1.aspx">
    <img class="displayed1" src="Images/NewProjectCohesive02.jpg" alt="" />
</a>
         <%-- <asp:HyperLink ID="HyperLink1" runat="server" href="https://images.google.com/">
              <asp:Button ID="Button2" runat="server" Text="Browse" /></asp:HyperLink>--%>

    </div>
    <div class="col-sm-4"> 
                <asp:Button ID="Button3" runat="server" Text="ShowAll" OnClick="Show_Click" CssClass="btn-primary" />

    </div>
          <div class="col-sm-2">   </div>

  </div><br />

     <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn-success" OnClick="Save_Click"  />

    </div>
    <div class="col-sm-4"> 
              <asp:Button ID="Button5" runat="server" Text="Delete" CssClass="btn-danger" OnClick="Delete_Click"  />

    </div>
          <div class="col-sm-2">   </div>

  </div><br />

     <div class="row">
    <div class="col-sm-2">   </div>
    <div class="col-sm-4">
        <asp:Button ID="Button6" runat="server" Text="Edit" CssClass="btn-primary" OnClick="Edit_Click" />
    </div>
    <div class="col-sm-4"> 
                <asp:Button ID="Button4" runat="server" Text="Update"  CssClass="btn-primary" OnClick="Update_Click" />

    </div>
          <div class="col-sm-2"> <asp:Button ID="Button7" runat="server" Text="Clear" OnClick="Clear_Click" CssClass="alert-info" />  </div>

  </div><br />
     <div>
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    </div>

    <div>
        <asp:GridView ID="memberview" runat="server" AutoGenerateColumns="False" DataKeyNames="Mno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Mno" HeaderText="Mno" InsertVisible="False" ReadOnly="True" SortExpression="Mno" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                <asp:BoundField DataField="ID_Proof" HeaderText="ID_Proof" SortExpression="ID_Proof" />
                <asp:BoundField DataField="Adhar_or_PanNo" HeaderText="Adhar_or_PanNo" SortExpression="Adhar_or_PanNo" />
                <asp:BoundField DataField="MembersId" HeaderText="MembersId" SortExpression="MembersId" />
                <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MEMBERSConnectionString2 %>" SelectCommand="SELECT * FROM [MembersDetails]"></asp:SqlDataSource>
    </div>

</div>

        </div>
    </form>
</body>
</html>
