.class public Lcom/bigkoo/pickerview/TimePickerView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

.field private D:F

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private a:I

.field private b:Lcom/bigkoo/pickerview/b/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/bigkoo/pickerview/TimePickerView$b;

.field private e:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/util/Calendar;

.field private s:Ljava/util/Calendar;

.field private t:Ljava/util/Calendar;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/TimePickerView$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/bigkoo/pickerview/a$d;->pickerview_time:I

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->a:I

    sget-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->e:Lcom/bigkoo/pickerview/TimePickerView$Type;

    const/16 v0, 0x11

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->f:I

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->o:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->p:I

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->x:Z

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->y:Z

    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->D:F

    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->d:Lcom/bigkoo/pickerview/TimePickerView$b;

    return-void
.end method

.method static synthetic A(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->J:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->A:I

    return p0
.end method

.method static synthetic E(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->z:I

    return p0
.end method

.method static synthetic F(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->B:I

    return p0
.end method

.method static synthetic G(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/b/a;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->b:Lcom/bigkoo/pickerview/b/a;

    return-object p0
.end method

.method static synthetic H(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->a:I

    return p0
.end method

.method static synthetic I(Lcom/bigkoo/pickerview/TimePickerView$a;)F
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->D:F

    return p0
.end method

.method static synthetic J(Lcom/bigkoo/pickerview/TimePickerView$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->E:Z

    return p0
.end method

.method static synthetic K(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/lib/WheelView$DividerType;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->C:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    return-object p0
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/TimePickerView$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/TimePickerView$b;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->d:Lcom/bigkoo/pickerview/TimePickerView$b;

    return-object p0
.end method

.method static synthetic c(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->f:I

    return p0
.end method

.method static synthetic d(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/TimePickerView$Type;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->e:Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-object p0
.end method

.method static synthetic e(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->j:I

    return p0
.end method

.method static synthetic i(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->k:I

    return p0
.end method

.method static synthetic j(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->l:I

    return p0
.end method

.method static synthetic k(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->m:I

    return p0
.end method

.method static synthetic l(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->n:I

    return p0
.end method

.method static synthetic m(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->o:I

    return p0
.end method

.method static synthetic n(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->p:I

    return p0
.end method

.method static synthetic o(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->q:I

    return p0
.end method

.method static synthetic p(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->u:I

    return p0
.end method

.method static synthetic q(Lcom/bigkoo/pickerview/TimePickerView$a;)I
    .locals 0

    iget p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->v:I

    return p0
.end method

.method static synthetic r(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->s:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic s(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->t:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic t(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->r:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic u(Lcom/bigkoo/pickerview/TimePickerView$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->w:Z

    return p0
.end method

.method static synthetic v(Lcom/bigkoo/pickerview/TimePickerView$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->y:Z

    return p0
.end method

.method static synthetic w(Lcom/bigkoo/pickerview/TimePickerView$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->x:Z

    return p0
.end method

.method static synthetic x(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->G:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->H:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->p:I

    return-object p0
.end method

.method public a(Lcom/bigkoo/pickerview/TimePickerView$Type;)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->e:Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->w:Z

    return-object p0
.end method

.method public a()Lcom/bigkoo/pickerview/TimePickerView;
    .locals 1

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/TimePickerView;-><init>(Lcom/bigkoo/pickerview/TimePickerView$a;)V

    return-object v0
.end method

.method public b(I)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->q:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->x:Z

    return-object p0
.end method

.method public c(I)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->A:I

    return-object p0
.end method

.method public c(Z)Lcom/bigkoo/pickerview/TimePickerView$a;
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/TimePickerView$a;->y:Z

    return-object p0
.end method
