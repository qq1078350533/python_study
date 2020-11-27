.class public Lcom/lawyee/wenshuapp/widget/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lawyee/wenshuapp/widget/a$a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/lawyee/wenshuapp/widget/a$a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/lawyee/wenshuapp/widget/a$a;->a:I

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/view/View;Landroid/widget/PopupWindow;)[I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_0
    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/widget/a$a;->a()I

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p2, v3, :cond_2

    const/4 v6, 0x4

    if-eq p2, v6, :cond_5

    const/16 v6, 0x10

    if-eq p2, v6, :cond_4

    const/16 v6, 0x40

    if-eq p2, v6, :cond_6

    const/16 v6, 0x100

    if-eq p2, v6, :cond_3

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    div-int/2addr v0, v4

    goto :goto_0

    :cond_4
    neg-int v0, v1

    goto :goto_0

    :cond_5
    sub-int/2addr v0, v1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/widget/a$a;->b()I

    move-result p2

    if-eq p2, v4, :cond_b

    const/16 v1, 0x8

    if-eq p2, v1, :cond_a

    const/16 v1, 0x20

    if-eq p2, v1, :cond_9

    const/16 v1, 0x80

    if-eq p2, v1, :cond_7

    const/16 v1, 0x200

    if-eq p2, v1, :cond_8

    :cond_7
    move p1, v5

    goto :goto_1

    :cond_8
    neg-int p2, v2

    sub-int/2addr p2, p1

    div-int/lit8 p1, p2, 0x2

    goto :goto_1

    :cond_9
    neg-int p1, p1

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_a
    neg-int p1, v2

    goto :goto_1

    :cond_b
    neg-int p1, p1

    :goto_1
    new-array p2, v4, [I

    aput v0, p2, v5

    aput p1, p2, v3

    return-object p2
.end method

.method public b()I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/widget/a$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    return v0
.end method
