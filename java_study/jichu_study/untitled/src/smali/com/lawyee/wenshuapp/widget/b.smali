.class public Lcom/lawyee/wenshuapp/widget/b;
.super Landroid/support/v7/widget/RecyclerView$h;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Paint;

.field private d:I


# direct methods
.method private constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/lawyee/wenshuapp/widget/b;->a:I

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/widget/b;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/widget/b;->c:Landroid/graphics/Paint;

    iput p2, p0, Lcom/lawyee/wenshuapp/widget/b;->d:I

    if-lez p4, :cond_0

    iput p4, p0, Lcom/lawyee/wenshuapp/widget/b;->a:I

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/widget/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Lcom/lawyee/wenshuapp/widget/b;
    .locals 2

    new-instance v0, Lcom/lawyee/wenshuapp/widget/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/lawyee/wenshuapp/widget/b;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Lcom/lawyee/wenshuapp/widget/b;
    .locals 2

    new-instance v0, Lcom/lawyee/wenshuapp/widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/lawyee/wenshuapp/widget/b;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V

    iget p2, p0, Lcom/lawyee/wenshuapp/widget/b;->d:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    iget p2, p0, Lcom/lawyee/wenshuapp/widget/b;->a:I

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/lawyee/wenshuapp/widget/b;->a:I

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V

    iget p3, p0, Lcom/lawyee/wenshuapp/widget/b;->d:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/widget/b;->c(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/widget/b;->d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lawyee/wenshuapp/widget/b;->a:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/lawyee/wenshuapp/widget/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/lawyee/wenshuapp/widget/b;->b:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lawyee/wenshuapp/widget/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lawyee/wenshuapp/widget/b;->a:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/lawyee/wenshuapp/widget/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/lawyee/wenshuapp/widget/b;->b:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lawyee/wenshuapp/widget/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
