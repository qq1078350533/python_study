.class public Lcom/bigkoo/pickerview/e/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/text/DateFormat;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:F

.field private f:Landroid/view/View;

.field private g:Lcom/bigkoo/pickerview/lib/WheelView;

.field private h:Lcom/bigkoo/pickerview/lib/WheelView;

.field private i:Lcom/bigkoo/pickerview/lib/WheelView;

.field private j:Lcom/bigkoo/pickerview/lib/WheelView;

.field private k:Lcom/bigkoo/pickerview/lib/WheelView;

.field private l:Lcom/bigkoo/pickerview/lib/WheelView;

.field private m:I

.field private n:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigkoo/pickerview/e/b;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/bigkoo/pickerview/TimePickerView$Type;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    iput-object p2, p0, Lcom/bigkoo/pickerview/e/b;->n:Lcom/bigkoo/pickerview/TimePickerView$Type;

    iput p3, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    iput p4, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/e/b;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    return p0
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/e/b;I)I
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->u:I

    return p1
.end method

.method private a(IIIILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p1, 0x1f

    if-le p4, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    :goto_1
    invoke-virtual {p2, p4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    goto :goto_5

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0x1e

    if-le p4, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, p4

    :goto_2
    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_1

    :cond_3
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_4

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_5

    :cond_4
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_7

    :cond_5
    const/16 p1, 0x1d

    if-le p4, p1, :cond_6

    goto :goto_3

    :cond_6
    move p1, p4

    :goto_3
    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_1

    :cond_7
    const/16 p1, 0x1c

    if-le p4, p1, :cond_8

    goto :goto_4

    :cond_8
    move p1, p4

    :goto_4
    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_1

    :goto_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_9

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p2, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/e/b;IIIILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/e/b;->a(IIIILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    return-void
.end method

.method static synthetic c(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    return p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorOut(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorOut(I)V

    return-void
.end method

.method static synthetic d(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    return p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorCenter(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextColorCenter(I)V

    return-void
.end method

.method static synthetic e(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    return p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerColor(I)V

    return-void
.end method

.method static synthetic f(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    return p0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    return-void
.end method

.method static synthetic g(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    return p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLineSpacingMultiplier(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLineSpacingMultiplier(F)V

    return-void
.end method

.method static synthetic h(Lcom/bigkoo/pickerview/e/b;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/e/b;->u:I

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/bigkoo/pickerview/e/b;->u:I

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->e:F

    invoke-direct {p0}, Lcom/bigkoo/pickerview/e/b;->g()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    return-void
.end method

.method public a(IIIIII)V
    .locals 9

    const-string v0, "1"

    const-string v1, "3"

    const-string v2, "5"

    const-string v3, "7"

    const-string v4, "8"

    const-string v5, "10"

    const-string v6, "12"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "6"

    const-string v3, "9"

    const-string v4, "11"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->u:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/a$c;->year:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    iget v4, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    iget v5, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    invoke-direct {v3, v4, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setGravity(I)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/a$c;->month:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    iget v5, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    iget v6, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    invoke-direct {v3, v5, v6}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    :goto_0
    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    add-int/lit8 v3, p2, 0x1

    iget v5, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    goto :goto_2

    :cond_0
    const/16 v5, 0xc

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    iget v6, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    invoke-direct {v3, v6, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    iget v5, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    invoke-direct {v3, v4, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {v3, v4, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    :goto_1
    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    :goto_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setGravity(I)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/a$c;->day:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    const/16 v5, 0x1c

    const/16 v6, 0x1d

    const/16 v7, 0x1e

    const/16 v8, 0x1f

    if-ne v2, v3, :cond_c

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    if-ne v2, v3, :cond_c

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v8, :cond_3

    iput v8, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v2, v3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :cond_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v7, :cond_5

    iput v7, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v2, v3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :cond_6
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_7

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_8

    :cond_7
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_a

    :cond_8
    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v6, :cond_9

    iput v6, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_9
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v2, v3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :cond_a
    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v5, :cond_b

    iput v5, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_b
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v2, v3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :cond_c
    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    if-ne p1, v2, :cond_12

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    if-ne v2, v3, :cond_12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    invoke-direct {p2, v2, v8}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    :goto_3
    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    goto :goto_4

    :cond_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    invoke-direct {p2, v2, v7}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :cond_e
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_f

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_10

    :cond_f
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_11

    :cond_10
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    invoke-direct {p2, v2, v6}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    invoke-direct {p2, v2, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    sub-int/2addr p3, p2

    goto/16 :goto_7

    :cond_12
    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    if-ne p1, v2, :cond_1c

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    if-ne v2, v3, :cond_1c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v8, :cond_13

    iput v8, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_13
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v4, v2}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :cond_14
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v7, :cond_15

    iput v7, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_15
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v4, v2}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :cond_16
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_17

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_18

    :cond_17
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_1a

    :cond_18
    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v6, :cond_19

    iput v6, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_19
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v4, v2}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :cond_1a
    iget p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-le p1, v5, :cond_1b

    iput v5, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_1b
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    iget v2, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    invoke-direct {p2, v4, v2}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :cond_1c
    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p2, v4, v8}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    :goto_5
    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    goto :goto_6

    :cond_1d
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p2, v4, v7}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :cond_1e
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1f

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_20

    :cond_1f
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_21

    :cond_20
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p2, v4, v6}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :cond_21
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p2, v4, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    goto :goto_5

    :goto_6
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    sub-int/2addr p3, v4

    :goto_7
    invoke-virtual {p1, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/a$c;->hour:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    const/16 p3, 0x17

    const/4 v2, 0x0

    invoke-direct {p2, v2, p3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p4}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/a$c;->min:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    const/16 p3, 0x3b

    invoke-direct {p2, v2, p3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p5}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setGravity(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/a$c;->second:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {p2, v2, p3}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p6}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/e/b;->m:I

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setGravity(I)V

    new-instance p1, Lcom/bigkoo/pickerview/e/b$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/bigkoo/pickerview/e/b$1;-><init>(Lcom/bigkoo/pickerview/e/b;Ljava/util/List;Ljava/util/List;)V

    new-instance p2, Lcom/bigkoo/pickerview/e/b$2;

    invoke-direct {p2, p0, v0, v1}, Lcom/bigkoo/pickerview/e/b$2;-><init>(Lcom/bigkoo/pickerview/e/b;Ljava/util/List;Ljava/util/List;)V

    iget-object p3, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p3, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/b/c;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/b/c;)V

    sget-object p1, Lcom/bigkoo/pickerview/e/b$3;->a:[I

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->n:Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-virtual {p2}, Lcom/bigkoo/pickerview/TimePickerView$Type;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    goto :goto_9

    :goto_8
    :pswitch_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    goto :goto_a

    :pswitch_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    goto :goto_9

    :pswitch_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    goto :goto_9

    :pswitch_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    :goto_9
    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    goto :goto_8

    :goto_a
    :pswitch_5
    invoke-direct {p0}, Lcom/bigkoo/pickerview/e/b;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->w:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-direct {p0}, Lcom/bigkoo/pickerview/e/b;->f()V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/a$e;->pickerview_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/bigkoo/pickerview/a$e;->pickerview_month:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/a$e;->pickerview_day:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p4}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/a$e;->pickerview_hours:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_3
    if-eqz p5, :cond_4

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p5}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/a$e;->pickerview_minutes:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_4
    if-eqz p6, :cond_5

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p6}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/e/b;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/a$e;->pickerview_seconds:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget v0, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    if-le p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    iput v1, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    iput p2, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    if-le v1, v0, :cond_6

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v0, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    if-ge p2, v0, :cond_3

    :goto_1
    iput v1, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    iput p2, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    goto :goto_2

    :cond_3
    if-ne p2, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    if-ge v1, v0, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    if-ge p1, v0, :cond_6

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/e/b;->o:I

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bigkoo/pickerview/e/b;->q:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/e/b;->r:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->s:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->t:I

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->k:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->l:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->p:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->d:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/e/b;->e()V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->c:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/e/b;->d()V

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/e/b;->b:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/e/b;->c()V

    return-void
.end method
