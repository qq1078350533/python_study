.class public Landroid/support/design/widget/a;
.super Landroid/support/v7/app/d;


# instance fields
.field a:Z

.field private b:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Landroid/support/design/widget/BottomSheetBehavior$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/design/widget/a;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/d;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/a;->a:Z

    iput-boolean p1, p0, Landroid/support/design/widget/a;->c:Z

    new-instance p2, Landroid/support/design/widget/a$4;

    invoke-direct {p2, p0}, Landroid/support/design/widget/a$4;-><init>(Landroid/support/design/widget/a;)V

    iput-object p2, p0, Landroid/support/design/widget/a;->e:Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/a;->a(I)Z

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroid/support/design/a$b;->bottomSheetDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget p1, Landroid/support/design/a$j;->Theme_Design_Light_BottomSheetDialog:I

    :cond_1
    :goto_0
    return p1
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$h;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Landroid/support/design/a$f;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget p1, Landroid/support/design/a$f;->design_bottom_sheet:I

    invoke-virtual {v1, p1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v2, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, p0, Landroid/support/design/widget/a;->e:Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior$a;)V

    iget-object v2, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, p0, Landroid/support/design/widget/a;->a:Z

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(Z)V

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget p2, Landroid/support/design/a$f;->touch_outside:I

    invoke-virtual {v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Landroid/support/design/widget/a$1;

    invoke-direct {p3, p0}, Landroid/support/design/widget/a$1;-><init>(Landroid/support/design/widget/a;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/support/design/widget/a$2;

    invoke-direct {p2, p0}, Landroid/support/design/widget/a$2;-><init>(Landroid/support/design/widget/a;)V

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    new-instance p2, Landroid/support/design/widget/a$3;

    invoke-direct {p2, p0}, Landroid/support/design/widget/a$3;-><init>(Landroid/support/design/widget/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 5

    iget-boolean v0, p0, Landroid/support/design/widget/a;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/design/widget/a;->c:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Landroid/support/design/widget/a;->d:Z

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/a;->c:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/design/widget/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/d;->onStart()V

    iget-object v0, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->setCancelable(Z)V

    iget-boolean v0, p0, Landroid/support/design/widget/a;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/a;->a:Z

    iget-object v0, p0, Landroid/support/design/widget/a;->b:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroid/support/design/widget/a;->a:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/design/widget/a;->a:Z

    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/a;->c:Z

    iput-boolean v0, p0, Landroid/support/design/widget/a;->d:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/design/widget/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/design/widget/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/widget/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->setContentView(Landroid/view/View;)V

    return-void
.end method
