.class public Lcom/bigkoo/pickerview/e/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/FrameLayout$LayoutParams;

.field protected b:Landroid/view/ViewGroup;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Landroid/view/View;

.field private i:Landroid/content/Context;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/bigkoo/pickerview/b/b;

.field private n:Z

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Z

.field private r:I

.field private s:Landroid/app/Dialog;

.field private t:Z

.field private u:Landroid/view/View$OnKeyListener;

.field private final v:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    const v0, -0xfa8201

    iput v0, p0, Lcom/bigkoo/pickerview/e/a;->c:I

    const v0, -0x3d250b

    iput v0, p0, Lcom/bigkoo/pickerview/e/a;->d:I

    const v0, -0xa0a0b

    iput v0, p0, Lcom/bigkoo/pickerview/e/a;->e:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/bigkoo/pickerview/e/a;->f:I

    iput v2, p0, Lcom/bigkoo/pickerview/e/a;->g:I

    iput v1, p0, Lcom/bigkoo/pickerview/e/a;->r:I

    new-instance v0, Lcom/bigkoo/pickerview/e/a$3;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/e/a$3;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->u:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/bigkoo/pickerview/e/a$4;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/e/a$4;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->v:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/e/a;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/e/a;->j:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/bigkoo/pickerview/e/a;)Lcom/bigkoo/pickerview/b/b;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/e/a;->m:Lcom/bigkoo/pickerview/b/b;

    return-object p0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/bigkoo/pickerview/e/a;
    .locals 1

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/a;->u:Landroid/view/View$OnKeyListener;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object p0
.end method

.method protected b(Z)Lcom/bigkoo/pickerview/e/a;
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sget v1, Lcom/bigkoo/pickerview/a$c;->outmost_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/a;->v:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-object p0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/bigkoo/pickerview/a$d;->layout_basepickerview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    sget v1, Lcom/bigkoo/pickerview/a$c;->content_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->l()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    new-instance v1, Lcom/bigkoo/pickerview/e/a$1;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/e/a$1;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/e/a;->j:Landroid/view/ViewGroup;

    sget v1, Lcom/bigkoo/pickerview/a$d;->layout_basepickerview:I

    iget-object v3, p0, Lcom/bigkoo/pickerview/e/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    sget v1, Lcom/bigkoo/pickerview/a$c;->content_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/e/a;->a(Z)Lcom/bigkoo/pickerview/e/a;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/e/a;->t:Z

    return-void
.end method

.method protected d()V
    .locals 1

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->j()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->k()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->o:Landroid/view/animation/Animation;

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->m()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->q:Z

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/e/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->q:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->n()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->n:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->n:Z

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->o:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bigkoo/pickerview/e/a$2;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/e/a$2;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->q:Z

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->n:Z

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->m:Lcom/bigkoo/pickerview/b/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bigkoo/pickerview/b/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public j()Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/bigkoo/pickerview/e/a;->r:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/d/a;->a(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/bigkoo/pickerview/e/a;->r:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/d/a;->a(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/content/Context;

    sget v2, Lcom/bigkoo/pickerview/a$f;->custom_dialog2:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/bigkoo/pickerview/e/a;->t:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/a$f;->pickerview_dialogAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    new-instance v1, Lcom/bigkoo/pickerview/e/a$5;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/e/a$5;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
