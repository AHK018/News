 <div class="pub-card-content">
                        <%
                            try {

                                //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM top_stories ORDER BY id DESC LIMIT 3 OFFSET 1");
                                ResultSet rs = stmt.executeQuery();
                                System.out.println("this reach");
                                int ij = 1;
                                while (rs.next()) {
                                    Blob imageBlob = rs.getBlob("image");
                                    InputStream imageStream = imageBlob.getBinaryStream();
                                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                                    byte[] buffer = new byte[4096];
                                    int n = 0;
                                    while (-1 != (n = imageStream.read(buffer))) {
                                        outputStream.write(buffer, 0, n);
                                    }
                                    byte[] imageBytes = outputStream.toByteArray();
                                    ij++;
                        %>

                        <% if (ij == 2) {%>
                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l2.get(i - 1)); %></span>
                            <a href="<% %>"><span class="pub-desc"><% out.print(l3.get(i - 1));%></span></a>
                            <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                        </div>
                        <%}%>
                        <% if (ij == 3) { %>
                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l2.get(i - 2)); %></span>
                            <a href="<%  %>"> <span class="pub-desc"></span><% out.print(l3.get(i - 2));%></a>
                            <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                        </div>
                        <%}%>
                        <% if (ij == 4) { %>                
                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l2.get(i - 3)); %></span>
                            <a href="<%  %>"><span class="pub-desc"><% out.print(l3.get(i - 3));%></span></a>
                            <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                        </div>
                        <%}%>
                        <%
                        }
                    } catch (Exception k) {
                        System.out.println(k.getMessage());
                    } %>
                    </div>
                </div>