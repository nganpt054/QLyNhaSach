<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Xem ví dụ</title>
</head>
<body>
    <table  align="center" border="1" cellspacing="0">
        <tr>
            <td>Đặc Biệt</td>
            <td><%Random r=new Random();
			 {
            int a=r.nextInt(100000);
            	if(a<10){
            		out.print("0000");
            		out.println(a);
            	}
            	else if(a<100){
            		out.print("000");
            		out.println(a);
            	}
            	else if(a<1000){
            		out.print("00");
            		out.println(a);
            	}
            	else if(a<10000){
            		out.print("0");
            		out.println(a);
            	}
            	else out.println(a);
			 }
            %>
                     
                    
                   </td>
        </tr>
        <tr>
            <td>Giải Nhất</td>
            <td><%Random r1=new Random();
			 {
            int a=r1.nextInt(100000);
            	if(a<10){
            		out.print("0000");
            		out.println(a);
            	}
            	else if(a<100){
            		out.print("000");
            		out.print(a);
            	}
            	else if(a<1000){
            		out.print("00");
            		out.println(a);
            	}
            	else if(a<10000){
            		out.print("0");
            		out.println(a);
            	}
            	else out.println(a);
			 }
            %></td>
        </tr>
        <tr>
            <td>Giải Nhì</td>
            <td><%Random r2= new Random(); 
              for(int i=0; i<2; i++){
            	  out.print("  					");
                  int a=r2.nextInt(100000);
              	if(a<10){
              		out.print("0000");
              		out.println(a);
              	}
              	else if(a<100){
              		out.print("000");
              		out.println(a);
              	}
              	else if(a<1000){
              		out.print("00");
              		out.println(a);
              	}
              	else if(a<10000){
              		out.print("0");
              		out.println(a);
              	}
              	else out.println(a);
  			 } %></td>
        </tr>
          <tr>
            <td>Giải Ba</td>
            <td><%Random r3= new Random(); 
              for(int i=0; i<6; i++){
            	  out.print("  		");
                  int a=r3.nextInt(100000);
              	if(a<10){
              		out.print("0000");
              		out.println(a);
              	}
              	else if(a<100){
              		out.print("000");
              		out.println(a);
              	}
              	else if(a<1000){
              		out.print("00");
              		out.println(a);
              	}
              	else if(a<10000){
              		out.print("0");
              		out.println(a);
              	}
              	else out.println(a);
  			 } %></td>
        </tr>
          <tr>
            <td>Giải Tư</td>
            <td><%Random r4= new Random(); 
              for(int i=0; i<4; i++){
            	  out.print("  ");
                 int a=r4.nextInt(10000);
               if (a<10) {out.print("000");
               			  out.println(a);
               			 }
               else if (a<100) {out.print("00");
    			  out.println(a);
    			 }
               else
            	   if (a<1000) {out.print("0");
     			  out.println(a);
     			 }else out.println(a); 
                      } %></td>
        </tr>
          <tr>
            <td>Giải Năm</td>
            <td><%Random r5= new Random(); 
              for(int i=0; i<6; i++){
            	  out.print("  ");
                  int a=r4.nextInt(10000);
                if (a<10) {out.print("000");
                			  out.println(a);
                			 }
                else if (a<100) {out.print("00");
     			  out.println(a);
     			 }
                else
             	   if (a<1000) {out.print("0");
      			  out.println(a);
      			 }else out.println(a); 
                       } %></td>
        </tr>
         <tr>
            <td>Giải Sáu</td>
            <td> <%Random r6= new Random(); 
              for(int i=0; i<3; i++){
            	  out.print("  ");
                 int a=r6.nextInt(1000);
               if (a<10) {out.print("00");
               			  out.println(a);
               			 }
               else if (a<100) {out.print("0");
    			  out.println(a);
    			 }
               else out.println(a); 
                      } %></td>
        </tr>
         <tr>
            <td>Giải Bảy</td>
            
            
            <td>
        <%Random r7= new Random(); 
              for(int i=0; i<4; i++){
            	  out.print("  ");
                 int a=r7.nextInt(100);
               if (a<10) {out.print("0");
               			  out.println(a);
               			 }
               else out.println(a); 
                      } %>
            
            
            </td>
           
          
        </tr>
        
        
    </table>
</body>
</html>