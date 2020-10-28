.class public Lnet/lawyee/mobilewidget/PageIndicatorView;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    sget-object v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_pages:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    sget v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_nowpage:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    sget v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_normalstyle:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->c:Landroid/graphics/drawable/Drawable;

    const v1, 0x106000b

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->d:I

    goto :goto_1

    :cond_0
    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    sget v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_normalstyle:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    sget v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_selectedstyle:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_2
    iput p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->f:I

    goto :goto_3

    :cond_2
    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    sget v0, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_selectedstyle:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    goto :goto_2

    :cond_3
    :goto_3
    sget p1, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_normalradius:I

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->g:I

    sget p1, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_selectedradius:I

    const/4 v0, 0x5

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->h:I

    sget p1, Lnet/lawyee/mobilewidget/c$d;->PageIndicatorView_interval:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->i:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(I)Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->j:Landroid/graphics/Paint;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PageIndicatorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PageIndicatorView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->i:F

    mul-float/2addr v2, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    iget v4, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->i:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_1

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->h:I

    int-to-float v5, v5

    iget v6, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->f:I

    goto :goto_1

    :cond_1
    iget v5, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->h:I

    sub-int v6, v3, v5

    sub-int v7, v1, v5

    add-int/2addr v3, v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->c:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_3

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->g:I

    int-to-float v5, v5

    iget v6, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->d:I

    :goto_1
    invoke-direct {p0, v6}, Lnet/lawyee/mobilewidget/PageIndicatorView;->a(I)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget v5, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->g:I

    sub-int v6, v3, v5

    sub-int v7, v1, v5

    add-int/2addr v3, v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->c:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getNowPage()I
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    return v0
.end method

.method public getPages()I
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    return v0
.end method

.method public setNowPage(I)V
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    :cond_1
    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    if-le p1, v0, :cond_2

    iput v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    :cond_2
    iput p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->b:I

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PageIndicatorView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPages(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/lawyee/mobilewidget/PageIndicatorView;->a:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/PageIndicatorView;->setNowPage(I)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PageIndicatorView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
