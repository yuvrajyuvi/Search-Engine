<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.SearchResult"%>


<html>
<head>
    <link rel= "stylesheet" type = "text/css" href="styles.css">
</head>
<body>
    <div class ="searchEngine">
    <h4>Search Engine</h4>
    <form action="Search">
          <input type ="text"  name = "keyword"></input>
          <button type ="submit">Search</button>
    </form>
    <form action="History">
          <button type="submit">History</button>
    </from>
    <div class ="resultTable">
    <table border =2>
        <tr>
            <td>Name</td>
            <td>Link</td>
        </tr>
        <%
           ArrayList<SearchResult> results= (ArrayList<SearchResult>) request.getAttribute("results");
           for(SearchResult result:results){
        %>
        <tr>
           <td><%out.println(result.getTitle());%></td>
           <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
        </tr>
        <%
           }
        %>
    </table>
    </div>
    </div>

</body>
</html>
