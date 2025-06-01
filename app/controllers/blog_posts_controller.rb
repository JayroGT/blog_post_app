class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy, :create_feedback]

  def index
    @blog_posts = BlogPost.all
  end

  def show
    @feedback = Feedback.new
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)

    if @blog_post.save
      redirect_to @blog_post, notice: 'Blog post was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post, notice: 'Blog post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @blog_post.destroy
    redirect_to blog_posts_url, notice: 'Blog post was successfully deleted.'
  end

  def create_feedback
    @feedback = @blog_post.feedbacks.build(feedback_params)

    if @feedback.save
      redirect_to @blog_post, notice: 'Thank you for your feedback!'
    else
      render :show
    end
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :author_name, :author_email)
  end
  
  def feedback_params
    params.require(:feedback).permit(:content, :commenter_name, :commenter_email)
  end
end