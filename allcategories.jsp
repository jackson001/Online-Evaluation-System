<%-- 
    Document   : allcategories
    Created on : May 31, 2018, 11:18:34 AM
    Author     : matthew
--%>
<%@page import="javafx.collections.ObservableList"%>
<%@page import="models.evaluation_Model"%>
<!-- Types -->
    <section id="types" class="padding">
      
        <div class="row">
          <div class="col-sm-12 text-center">
            <h2 class="uppercase">Let's Learn and Examine Ourselves!</h2>
            <p class="heading_space">We are proud to have this platform to help us learn the real assessment activities. Practice makes perfect!. </p>
          </div>
        </div>
       
        <div id="type-grid" class="cbp cbp-l-grid-mosaic-flat">
            <% evaluation_Model categories=new evaluation_Model();
            //get distinct categories
           ObservableList<String>  allcategories= categories.getevaluationcategories();
           for(int i=0; i<allcategories.size(); i++){            
             int count= categories.getcategorycount(allcategories.get(i));
            System.out.println("the size is"+allcategories.size()+"we are in"+allcategories.get(i)+"where count is"+count);%>     
                        
          <div class="cbp-item">
              <a class="focus-grey " href="home?action=evaluation&category=<%= allcategories.get(i) %>">
              <img src="images/gridd1.jpg" alt="">
              <div class="grid-caption">
                  <h3> <%= allcategories.get(i) %> Field</h3>
                <span><%= count %> Assessments</span>
              </div>
            </a>
          </div>
                        <% } %>
           
            

        </div>
      
    </section>
