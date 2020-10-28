.class public abstract Lcom/lawyee/wenshuapp/widget/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/widget/a$a;
    }
.end annotation


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/widget/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/widget/a;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/widget/a;->a()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/widget/a;->b()V

    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/widget/a;->c:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/widget/a;->e()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Landroid/view/View;Lcom/lawyee/wenshuapp/widget/a$a;II)V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1, v0}, Lcom/lawyee/wenshuapp/widget/a$a;->a(Landroid/view/View;Landroid/widget/PopupWindow;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    aget v1, p2, v1

    add-int/2addr v1, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    add-int/2addr p2, p4

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method protected abstract b()V
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method protected e()V
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/widget/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    return-void
.end method
