let index = {
		init: function() {

			$("#btn-save").on("click", ()=>{ 
				this.save();
			}); 
			$("#btn-update").on("click", ()=>{
				this.update();
			});  
		},
		
		save: function() {

			let data = {
				title: $("#title").val(),
				content: $("#content").val()
			}

			$.ajax({
				type: "post",
				url: "/api/board", 
				data: JSON.stringify(data), 
				contentType: "application/json; charset=utf-8", 
				dataType: "json"
			}).done(function(resp){
				alert("글 작성이 완료되었습니다.");
				location.href = "/";
				console.log(resp);
			}).fail(function(error){
				alert(JSON.stringify(error));
			});
		},
		
		update: function() {
			let data = {
				id: $("#id").val(),
				username: $("#username").val(),
				password: $("#password").val(),
				email: $("#email").val()
			}
			
			$.ajax({
				type: "PUT",
				url: "/user", 
				data: JSON.stringify(data), 
				contentType: "application/json; charset=utf-8", 
				dataType: "json" 
			}).done(function(resp){  
				alert("회원수정이 완료되었습니다.");
				location.href = "/";
			}).fail(function(error){
				alert(JSON.stringify(error));
			});
		}

}

index.init();