.class public Landroid/support/design/widget/TabLayout$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/support/design/widget/TabLayout;

.field public b:Landroid/support/design/widget/TabLayout$h;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/TabLayout$f;
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$f;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    return-object p0
.end method

.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    return-object p0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    return v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$f;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->b()V

    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/view/View;

    return-void
.end method
