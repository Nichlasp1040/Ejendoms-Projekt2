<%@ Page Title="" Language="C#" MasterPageFile="~/EjendomsProjektMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Ejendoms_Projekt2.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">

        <!--Overskrift i box nr 2 -- skal ændre til heading senere-->
        <h2>Status1</h2>
        <table>
            <tr>
                <th>Random1</th>
                <th>Random2</th>
            </tr>
            <tr>
                <td>
                    <!--Knapper i box nr 3  -- skal indsætte fra data base indsæt knap her-->
                    <button type="button">Click Me!</button>
                </td>
                <td>
                    <button onclick="myalert()">Show Alert Message</button>
                </td>
            </tr>
        </table>
    </div>

    <div class="box">

        <!--Overskrift i box nr 2 -- skal ændre til heading senere-->
        <h2>Status2</h2>

        <table>
            <tr>
                <th>Random1</th>
                <th>Random2</th>
            </tr>
            <tr>
                <td>
                    <!--Knapper i box nr 3  -- skal indsætte fra data base indsæt knap her-->
                    <button type="button">Click Me!</button>
                </td>
                <td>
                    <button onclick="myalert()">Show Alert Message</button>
                </td>
            </tr>
        </table>
    </div>

    <div class="box">
        <!--Overskrift i box nr 2 -- skal ændre til heading senere-->
        <h2>Status3</h2>

        <table>
            <tr>
                <th>Random1</th>
                <th>Random2</th>
            </tr>
            <tr>
                <td>
                    <!--Knapper i box nr 3  -- skal indsætte fra data base indsæt knap her-->
                    <button type="button">Click Me!</button>
                </td>
                <td>
                    <button onclick="myalert()">Show Alert Message</button>
                </td>
            </tr>
            <tr>
                <td>
                    <!--Knapper i box nr 3  -- skal indsætte fra data base indsæt knap her-->
                    <button type="button">Click Me!</button>
                </td>
                <td>
                    <button onclick="myalert()">Show Alert Message</button>
                </td>
            </tr>
        </table>
    </div>

    <script>
        function myalert() {
            alert("Welcome to GeeksforGeeks.\n" + "It is the best portal for computer" + "science enthusiasts!")
        }
    </script>

</asp:Content>
