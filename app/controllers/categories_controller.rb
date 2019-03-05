class CategoriesController < ApplicationController
  #method untuk menampilkan halaman tambah kategori baru
  def new
    @category = Category.new
  end

  #memproses penambahan kategori baru
  def create
    @category = Category.new(params.require(:category).permit(:name))
      respond_to do |format|
        if @category.save
          # render plain: "#{@category.name} Category was successfully created."
          format.html { redirect_to "/categories/new", notice: "Category was successfully created." }
        else
          format.html { redirect_to "/categories/new", notice: "Category wasn't successfully created." }
        end
      end
  end

  #memunculkan list kategori
  def index
    @category = Category.all
  end

  #memunculkan kategori berdasarkan id
  def show
    @category = Category.find(params[:id])
  end

  #memunculkan halaman untuk melakukan pengubahan data berdasarkan id
  def edit
      @category = Category.find(params[:id])
  end

  #memproses pengubahan data kategori
  def update
    @category = Category.find(params[:id])
    respond_to do |format|
      if @category.update(params.require(:category).permit(:name))
        format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  #melakukan penghapusan data kategori
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_path, notice: 'Category was successfully destroyed.' }
    end
  end

end
