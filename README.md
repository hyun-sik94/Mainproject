# 실행 방법
소스코드를 다운 받은 후, src - main - webapp 폴더에 있는 welcome.jsp를 실행하여 회원가입 및 로그인, 상품 구매를 진행한다.

# 개발 환경
![image](https://user-images.githubusercontent.com/79977761/170161362-9bc43526-de3f-4423-b54a-cdd1c6bb00e0.png)

# 개발 팀 인원
+ 총 3명
+ 개발 기간 : 3주

# 개발 계획표
![캡처](https://user-images.githubusercontent.com/79977761/170136616-c0e6f040-8231-4fd1-9c16-8c7c08481160.PNG)

# 구현기능(요구사항 정의서)
![image](https://user-images.githubusercontent.com/79977761/170137485-a612340e-3769-4280-b636-d77a0be2eea4.png)

# 개발 동기
코로나 19로 인한 재택근무, 재택교육이 활성화되면서 필수품으로 자리잡은 것은  노트북, pc, 태블릿 등 전자기기이다.
언택트 시대에 맞게 오프라인보다 온라인으로 중고품, 신제품 등 구매가 증가하고 있는 추세이므로
전자기기 웹 사이트에서 온라인상으로 물건을 쉽게 구매할 수 있도록 사이트를 제작하게 되었다.

# 초기 화면
+ 5초마다 자동으로 새로고침이 실행되며, 접속시간이 표시 된다. 
+ 구글 Map Api를 통해 지도를 출력하였고, 마커 클릭시 쇼핑몰의 이름이 표시 된다.


![image](https://user-images.githubusercontent.com/79977761/170154907-70bd0b18-c662-4b90-83c8-294b8990db9e.png)

# 회원가입
+ 가입란의 정보를 기입한 후 [가입완료] 버튼을 클릭하게 되면 데이터베이스 테이블에 데이터가 전송되어 새로운 회원이 추가 된다.
+ 만약 빈 내용(우편번호, 배송 주소 제외)이 있거나 비밀번호와 비밀번호 확인란의 내용이 동일하지 않는 경우 오류 창이 출력된다.

![image](https://user-images.githubusercontent.com/79977761/170157641-54b367eb-4d60-4832-8a6e-02731dbeff8a.png)

+ 빈 정보를 입력 한 경우
![image](https://user-images.githubusercontent.com/79977761/170157949-919186db-00d6-4155-97ce-e52b5785a936.png)
+ 비밀번호가 일치하지 않는 경우
![image](https://user-images.githubusercontent.com/79977761/170157982-37540511-1249-4e25-a0ea-de6f1a9f4bb7.png)


# 로그인
+ 회원가입 시 등록한 ID와 비밀번호를 입력하여 로그인을 진행, 데이터베이스 테이블에 해당 내용이 없거나 일치하지 않는 경우 오류 창이 출력 된다.
+ 회원정보는 Session 정보를 통해 유지 된다.
![image](https://user-images.githubusercontent.com/79977761/170157118-61ec844d-4158-42b7-b067-c62814fb0134.png)

+ 오류 화면
![image](https://user-images.githubusercontent.com/79977761/170158195-03f5418c-f1a0-4760-b3b2-5ede9044e880.png)


# 상품 목록
+ 데이터베이스 테이블에 등록 된 상품 목록을 출력하여 보여준다.
+ 상품 목록 등록은 관리자 권한을 가진 사용자만 가능하며, 조건식을 통해 권한을 가진 경우에만 메뉴화면에 출력 된다.

![image](https://user-images.githubusercontent.com/79977761/170158927-1cc5f612-fe78-42a4-80c1-ccc177762cff.png)


# 상품 장바구니 담기
![image](https://user-images.githubusercontent.com/79977761/170159204-f8c9f457-3347-427e-9e2c-2cd10de83c55.png)
![image](https://user-images.githubusercontent.com/79977761/170159371-57e5682f-648f-4faa-a803-db7d59f916d6.png)


# 상품구매하기
![image](https://user-images.githubusercontent.com/79977761/170159433-f0c73dc7-3077-4459-b464-ada3fd96c916.png)
![image](https://user-images.githubusercontent.com/79977761/170159442-101c7eb7-2979-4fb5-b37f-5ca25c5812a8.png)

# 게시판
+ 게시판을 등록하는 경우 회원가입 시 입력한 닉네임이 자동으로 입력 되며, 작성한 게시판 제목과, 내용이 등록되며 날짜는 sysdate로 입력 되고, 글번호는 시퀀스를 통해 순차적인 번호로 입력되어 DB 테이블에 등록 된다.

![image](https://user-images.githubusercontent.com/79977761/170159586-442352d7-1266-49ec-af18-ec4a3fd375d8.png)

# 게시판 댓글 등록하기
+ 게시글이 등록 된 컬럼의 번호를 통해 댓글이 등록 되며, 삭제도 가능하다.
![image](https://user-images.githubusercontent.com/79977761/170159976-c50d98cd-6549-429b-b065-31b849630805.png)
![image](https://user-images.githubusercontent.com/79977761/170160084-10d96406-aba4-4c8a-916f-77d13b73eaf9.png)


# 채팅 문의하기
+ 관리자 권한을 가진 사용자는 [운영자채팅] 메뉴로 접속 되고, 손님 권한을 가진 사용자는 [채팅] 메뉴로 접속 되어, 문의 사항이 있는 경우 운영자와의 1:1 채팅을 진행할 수 있다.
+ Java의 Socket 기능을 이용하여 Tomcat의 포트 번호를 일치시켜준 후 서버에 접속하여 사용한다.
![image](https://user-images.githubusercontent.com/79977761/170160883-14f4598f-e55b-42e7-b21d-bc3158d14750.png)
![image](https://user-images.githubusercontent.com/79977761/170161053-95783d53-756d-4513-8b4d-da308a3e3ec8.png)


# 시현영상

https://user-images.githubusercontent.com/79977761/170161434-bf130aff-f811-46dd-a5c2-6b0075bca9d1.mp4



# 느낀점
웹 페이지를 MVC 패턴의 방법 통해 제작하며 JSP와 JDBC에 대한 실력을 향상 시킬 수 있는 시간이었으며, 팀원들과 프로젝트를 진행하며 소통의 중요성과 조직적인 프로젝트 진행의 방법을 알 수 있었습니다. 

