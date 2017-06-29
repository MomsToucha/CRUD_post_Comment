class PostsController < ApplicationController
    def new
        # 사용자가 데이터를 입력할 화면
        # 자동으로 액션이름과 같은 파일을 찾아 사용자에게 보여줘라.
    end
    
    def create
        #입력받은 데이터를 실제 db에 저장하는 액션
        
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"
    end
    
    #READ
    def index
        # 지금까지 작성한 모든 post들을 보여주는 액션
        @posts = Post.all
    end
    
    def show
        # 각각의 post들을 보여주는 액션
        @post = Post.find(params[:post_id])
        @comments = Comment.where(post_id: params[:post_id])
    end
    
    #UPDATE
    def edit
        # 사용자의 입력을 받는 액션
        @post = Post.find(params[:post_id])
    end
    
    def update
        # 사용자의 입력을 db에 저장하는 액션
        @post = Post.find(params[:post_id])
        
        # 실제 수정할 코드
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"
    end
    
    #DESTROY
    def destroy
        # 한개의 post를 삭제하는 액션
        @post = Post.find(params[:post_id])
        @post.destroy
        
        redirect_to "/"
    end
end
