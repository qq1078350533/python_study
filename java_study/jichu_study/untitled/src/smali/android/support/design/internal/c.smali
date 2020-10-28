.class public Landroid/support/design/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/c$c;,
        Landroid/support/design/internal/c$e;,
        Landroid/support/design/internal/c$f;,
        Landroid/support/design/internal/c$d;,
        Landroid/support/design/internal/c$b;,
        Landroid/support/design/internal/c$a;,
        Landroid/support/design/internal/c$h;,
        Landroid/support/design/internal/c$i;,
        Landroid/support/design/internal/c$g;,
        Landroid/support/design/internal/c$j;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/support/v7/view/menu/h;

.field c:Landroid/support/design/internal/c$b;

.field d:Landroid/view/LayoutInflater;

.field e:I

.field f:Z

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:I

.field k:I

.field l:I

.field final m:Landroid/view/View$OnClickListener;

.field private n:Landroid/support/design/internal/NavigationMenuView;

.field private o:Landroid/support/v7/view/menu/o$a;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/design/internal/c$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/c$1;-><init>(Landroid/support/design/internal/c;)V

    iput-object v0, p0, Landroid/support/design/internal/c;->m:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;
    .locals 3

    iget-object v0, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/a$h;->design_navigation_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/internal/NavigationMenuView;

    iput-object p1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    iget-object p1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/design/internal/c$b;

    invoke-direct {p1, p0}, Landroid/support/design/internal/c$b;-><init>(Landroid/support/design/internal/c;)V

    iput-object p1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    :cond_0
    iget-object p1, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    sget v0, Landroid/support/design/a$h;->design_navigation_item_header:I

    iget-object v1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    :cond_1
    iget-object p1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/c;->p:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroid/support/design/internal/c;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/a$d;->design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/c;->l:I

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/c;->h:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/c;->i:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/c$b;->a(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/v4/view/aa;)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v4/view/aa;->b()I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/c;->q:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/support/design/internal/c;->q:I

    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    iget v1, p0, Landroid/support/design/internal/c;->q:I

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/support/v4/view/s;->b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->o:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/j;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/c$b;->a(Landroid/support/v7/view/menu/j;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/c;->o:Landroid/support/v7/view/menu/o$a;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/internal/c$b;->a()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/c;->p:I

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/c;->g:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/internal/c$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroid/support/design/internal/c;->n:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-eqz v1, :cond_1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v1}, Landroid/support/design/internal/c$b;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/c;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/internal/c;->f:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Z)V

    return-void
.end method

.method public d()Landroid/support/v7/view/menu/j;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v0}, Landroid/support/design/internal/c$b;->b()Landroid/support/v7/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/c;->j:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Z)V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/c;->k:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/c;->a(Z)V

    return-void
.end method

.method public f()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/c;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/c;->j:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/c;->k:I

    return v0
.end method
