require 'rails_helper'

<<<<<<< HEAD

=======
>>>>>>> bloccit-checkpoint22
RSpec.describe PostsController, type: :controller do

  let(:my_topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:my_post) { my_topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET show" do
     it "returns http success" do
       get :show, params: {topic_id: my_topic.id, id: my_post.id}
<<<<<<< HEAD
      #  get :show, params: {id: my_post.id}
=======
>>>>>>> bloccit-checkpoint22
       expect(response).to have_http_status(:success)
     end
     it "renders the #show view" do
       get :show, params: {topic_id: my_topic.id, id: my_post.id}
<<<<<<< HEAD
      #  get :show, params: {id: my_post.id}
=======
>>>>>>> bloccit-checkpoint22
       expect(response).to render_template :show
     end

     it "assigns my_post to @post" do
<<<<<<< HEAD
        get :show, params: {topic_id: my_topic.id, id: my_post.id}
      #  get :show, params: {id: my_post.id}
=======
       get :show, params: {topic_id: my_topic.id, id: my_post.id}
>>>>>>> bloccit-checkpoint22
       expect(assigns(:post)).to eq(my_post)
     end
   end

  describe "GET #new" do
    it "returns http success" do
      get :new, params: {topic_id: my_topic.id}
<<<<<<< HEAD
      # get :new
=======
>>>>>>> bloccit-checkpoint22
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new, params: {topic_id: my_topic.id}
<<<<<<< HEAD
      # get :new
=======
>>>>>>> bloccit-checkpoint22
      expect(response).to render_template :new
    end

    it "instantiates @post" do
<<<<<<< HEAD
      # get :new
=======
>>>>>>> bloccit-checkpoint22
      get :new, params: {topic_id: my_topic.id}
      expect(assigns(:post)).not_to be_nil
    end
  end

  describe "POST create" do
    it "increases the number of Post by 1" do
      expect{post :create, params: {topic_id: my_topic.id, title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Post,:count).by(1)
<<<<<<< HEAD
      # expect{ post :create, params: {topic: {name: RandomData.random_sentence, description: RandomData.random_paragraph}}}
      # expect{post :create, params: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Post,:count).by(1)
=======
>>>>>>> bloccit-checkpoint22
    end

    it "assigns the new post to @post" do
      post :create, params: {topic_id: my_topic.id, title: RandomData.random_sentence, body: RandomData.random_paragraph}
<<<<<<< HEAD
      # post :create, params: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
=======
>>>>>>> bloccit-checkpoint22
      expect(assigns(:post)).to eq Post.last
    end

    it "redirects to the new post" do
      post :create, params: {topic_id: my_topic.id, title: RandomData.random_sentence, body: RandomData.random_paragraph}
      expect(response).to redirect_to [my_topic, Post.last]
<<<<<<< HEAD
      # post :create, params: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
      # expect(response).to redirect_to Post.last
=======
>>>>>>> bloccit-checkpoint22
    end
  end

  describe "GET edit" do
       it "returns http success" do
         get :edit, params: {topic_id: my_topic.id, id: my_post.id}
<<<<<<< HEAD
        #  get :edit, params: {id: my_post.id}
=======
>>>>>>> bloccit-checkpoint22
         expect(response).to have_http_status(:success)
       end

       it "renders the #edit view" do
         get :edit, params: {topic_id: my_topic.id, id: my_post.id}
<<<<<<< HEAD
        #  get :edit, params: {id: my_post.id}
=======
>>>>>>> bloccit-checkpoint22
         expect(response).to render_template :edit
       end

       it "assigns post to be updated to @post" do
<<<<<<< HEAD
        #  get :edit, params: {id: my_post.id}
        get :edit, params: {topic_id: my_topic.id, id: my_post.id}
=======
         get :edit, params: {topic_id: my_topic.id, id: my_post.id}

>>>>>>> bloccit-checkpoint22
         post_instance = assigns(:post)

         expect(post_instance.id).to eq my_post.id
         expect(post_instance.title).to eq my_post.title
         expect(post_instance.body).to eq my_post.body
       end
     end

     describe "PUT update" do
        it "updates post with expected attributes" do
          new_title = RandomData.random_sentence
          new_body = RandomData.random_paragraph

          put :update, params: {topic_id: my_topic.id, id: my_post.id, title: new_title, body: new_body}
<<<<<<< HEAD
          # put :update, params: {id: my_post.id, title: new_title, body: new_body}
=======

>>>>>>> bloccit-checkpoint22
          # put :update, id: my_post.id, post: {title: new_title, body: new_body}

          updated_post = assigns(:post)
          expect(updated_post.id).to eq my_post.id
          expect(updated_post.title).to eq new_title
          expect(updated_post.body).to eq new_body
        end

        it "redirects to the updated post" do
          new_title = RandomData.random_sentence
          new_body = RandomData.random_paragraph

          put :update, params: {topic_id: my_topic.id, id: my_post.id, title: new_title, body: new_body}
          expect(response).to redirect_to [my_topic, my_post]
<<<<<<< HEAD
          # put :update, params: {id: my_post.id, title: new_title, body: new_body}
          # expect(response).to redirect_to my_post
=======
>>>>>>> bloccit-checkpoint22
        end
      end

      describe "DELETE destroy" do
       it "deletes the post" do
         delete :destroy, params: {topic_id: my_topic.id, id: my_post.id}
<<<<<<< HEAD
        #  delete :destroy, params: {id: my_post.id}
=======
>>>>>>> bloccit-checkpoint22
         count = Post.where({id: my_post.id}).size
         expect(count).to eq 0
       end

       it "redirects to topic show" do
         delete :destroy, params: {topic_id: my_topic.id, id: my_post.id}
         expect(response).to redirect_to my_topic
<<<<<<< HEAD
      #  it "redirects to posts index" do
      #    delete :destroy, params: {id: my_post.id}
      #    expect(response).to redirect_to posts_path
=======
>>>>>>> bloccit-checkpoint22
       end
     end
end
