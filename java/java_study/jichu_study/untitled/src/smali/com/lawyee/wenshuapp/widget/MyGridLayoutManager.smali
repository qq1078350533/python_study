.class public Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;


# instance fields
.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;->z:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;->z:Z

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;->z:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/GridLayoutManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
