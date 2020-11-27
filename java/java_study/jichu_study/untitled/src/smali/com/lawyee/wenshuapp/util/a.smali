.class public Lcom/lawyee/wenshuapp/util/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Landroid/app/Activity;

.field private e:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lawyee/wenshuapp/util/a;->e:I

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a;->d:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/util/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/lawyee/wenshuapp/util/a$1;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/util/a$1;-><init>(Lcom/lawyee/wenshuapp/util/a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/util/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/a;->b()I

    move-result v0

    iget v1, p0, Lcom/lawyee/wenshuapp/util/a;->b:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/lawyee/wenshuapp/util/a;->e:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/a;->c()I

    move-result v1

    iput v1, p0, Lcom/lawyee/wenshuapp/util/a;->e:I

    :cond_0
    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/lawyee/wenshuapp/util/a;->e:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iput v0, p0, Lcom/lawyee/wenshuapp/util/a;->b:I

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/lawyee/wenshuapp/util/a;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/util/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/util/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/a;->a()V

    return-void
.end method

.method private b()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private c()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method
