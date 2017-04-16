<script>
    $(".addItem").on("click", function () {
        var id = this.value;
        console.log(id);
         $.get('/CartServlet', {"id": id},
         function (resp) {
         })
         .fail(function () {
         alert("Adding into the shopping cart Request failed.");
         });
    });
</script>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<ul class="list-layout items text-center">
    <c:forEach var="product" items="${products}">

            <div class="col-sm-4">
                <div class="thumbnail">
                    <p>${product.name}<b style="color:red"><br><span>$</span>${product.price} </b></p>
                    <img src="img/${product.url}.jpg" alt="" style="width:220px;height:150px; padding-bottom:20px">
                    <div style="text-align: right" >
                        <button type="button" class="addItem btn btn-sm btn-white" value=${product.id}>add to <b style="color:red">shopping chart</b></button>
                    </div>
                </div>
            </div>

    </c:forEach>
</ul>
