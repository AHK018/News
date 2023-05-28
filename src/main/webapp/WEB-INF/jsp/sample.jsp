<div class="brefings">
                <span class="head-use">Local News</span>
                <%

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");

                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                        PreparedStatement stmt = con.prepareStatement("select * from local_news");
                        System.out.println("asdasdasd");
                        ResultSet rs = stmt.executeQuery();
                        while (rs.next()) {
                            l5.add(rs.getString("heading"));
                            l6.add(rs.getString("post_date"));
                            l7.add(rs.getString("description"));
                            l8.add(rs.getString("link"));
                        }
                        op = l5.size();
                    } catch (Exception k) {
                        System.out.println(k.getMessage());
                    }
                %>
                <div class="short-news">
                    <div class="short-brand">?? <%l5.get(op);%></div>
                    <div class="short-brand">?? <%l6.get(op);%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l8.get(op));%>"><span class="pub-desc"><%l7.get(op);%></span>
                            <div class="short-img"></div>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>

                <div class="short-news">
                    <div class="short-brand">?? <%l5.get(op - 1);%></div>
                    <div class="short-brand">?? <%l6.get(op - 1);%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l8.get(op - 1));%>"><span class="pub-desc"><%l7.get(op - 1);%></span>
                            <div class="short-img"></div>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>

                <div class="short-news">
                    <div class="short-brand">?? <%l5.get(op - 2);%></div>
                    <div class="short-brand">?? <%l6.get(op - 2);%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l8.get(op - 2));%>"><span class="pub-desc"><%l7.get(op - 2);%></span>
                            <div class="short-img"></div>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
            </div>