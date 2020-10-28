.class public Lcom/bigkoo/pickerview/TimePickerView;
.super Lcom/bigkoo/pickerview/e/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/TimePickerView$b;,
        Lcom/bigkoo/pickerview/TimePickerView$a;,
        Lcom/bigkoo/pickerview/TimePickerView$Type;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/util/Calendar;

.field private C:Ljava/util/Calendar;

.field private D:Ljava/util/Calendar;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:I

.field private L:I

.field private M:F

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

.field a:Lcom/bigkoo/pickerview/e/b;

.field private i:I

.field private j:Lcom/bigkoo/pickerview/b/a;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/bigkoo/pickerview/TimePickerView$b;

.field private o:I

.field private p:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/bigkoo/pickerview/TimePickerView$a;)V
    .locals 1

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(Lcom/bigkoo/pickerview/TimePickerView$a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/e/a;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->o:I

    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->M:F

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->b(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/TimePickerView$b;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->n:Lcom/bigkoo/pickerview/TimePickerView$b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->c(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->o:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->d(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/TimePickerView$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->p:Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->e(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->f(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->g(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->h(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->t:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->i(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->u:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->j(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->v:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->k(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->w:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->l(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->x:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->m(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->y:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->n(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->z:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->o(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->A:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->p(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->E:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->q(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->F:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->r(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->s(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->t(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->u(Lcom/bigkoo/pickerview/TimePickerView$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->G:Z

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->v(Lcom/bigkoo/pickerview/TimePickerView$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->I:Z

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->w(Lcom/bigkoo/pickerview/TimePickerView$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->H:Z

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->x(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->O:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->y(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->P:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->z(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->Q:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->A(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->R:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->B(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->S:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->C(Lcom/bigkoo/pickerview/TimePickerView$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->T:Ljava/lang/String;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->D(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->K:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->E(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->J:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->F(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->L:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->G(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->j:Lcom/bigkoo/pickerview/b/a;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->H(Lcom/bigkoo/pickerview/TimePickerView$a;)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->i:I

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->I(Lcom/bigkoo/pickerview/TimePickerView$a;)F

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->M:F

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->J(Lcom/bigkoo/pickerview/TimePickerView$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->N:Z

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->K(Lcom/bigkoo/pickerview/TimePickerView$a;)Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->U:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-static {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(Lcom/bigkoo/pickerview/TimePickerView$a;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/TimePickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->H:Z

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->c(Z)V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->c()V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->d()V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->e()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->j:Lcom/bigkoo/pickerview/b/a;

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/a$d;->pickerview_time:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/bigkoo/pickerview/a$c;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->m:Landroid/widget/TextView;

    sget v0, Lcom/bigkoo/pickerview/a$c;->btnSubmit:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->k:Landroid/widget/Button;

    sget v0, Lcom/bigkoo/pickerview/a$c;->btnCancel:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->k:Landroid/widget/Button;

    const-string v1, "submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->l:Landroid/widget/Button;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/a$e;->pickerview_submit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->q:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/bigkoo/pickerview/a$e;->pickerview_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->r:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->s:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->k:Landroid/widget/Button;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->t:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->c:I

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->l:Landroid/widget/Button;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->u:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->c:I

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->m:Landroid/widget/TextView;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->v:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->f:I

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->k:Landroid/widget/Button;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->l:Landroid/widget/Button;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->m:Landroid/widget/TextView;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->z:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget p1, Lcom/bigkoo/pickerview/a$c;->rv_topbar:I

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/TimePickerView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->x:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->e:I

    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_3

    :cond_7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->i:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bigkoo/pickerview/b/a;->a(Landroid/view/View;)V

    :goto_3
    sget p1, Lcom/bigkoo/pickerview/a$c;->timepicker:I

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/TimePickerView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->w:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->g:I

    :cond_8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/bigkoo/pickerview/e/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->p:Lcom/bigkoo/pickerview/TimePickerView$Type;

    iget v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->o:I

    iget v3, p0, Lcom/bigkoo/pickerview/TimePickerView;->A:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/bigkoo/pickerview/e/b;-><init>(Landroid/view/View;Lcom/bigkoo/pickerview/TimePickerView$Type;II)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->E:I

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->F:I

    if-eqz v0, :cond_9

    if-gt p1, v0, :cond_9

    invoke-direct {p0}, Lcom/bigkoo/pickerview/TimePickerView;->o()V

    :cond_9
    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_c

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    if-nez p1, :cond_b

    :goto_4
    invoke-direct {p0}, Lcom/bigkoo/pickerview/TimePickerView;->p()V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/bigkoo/pickerview/TimePickerView;->q()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->P:Ljava/lang/String;

    iget-object v3, p0, Lcom/bigkoo/pickerview/TimePickerView;->Q:Ljava/lang/String;

    iget-object v4, p0, Lcom/bigkoo/pickerview/TimePickerView;->R:Ljava/lang/String;

    iget-object v5, p0, Lcom/bigkoo/pickerview/TimePickerView;->S:Ljava/lang/String;

    iget-object v6, p0, Lcom/bigkoo/pickerview/TimePickerView;->T:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->H:Z

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/TimePickerView;->b(Z)Lcom/bigkoo/pickerview/e/a;

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->G:Z

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->a(Z)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->L:I

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->c(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->U:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->M:F

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->a(F)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->J:I

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->e(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->K:I

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->d(I)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->I:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->E:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/e/b;->a(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->F:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/e/b;->b(I)V

    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->C:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->D:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private q()V
    .locals 14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move v13, v0

    move v8, v1

    move v12, v3

    move v11, v4

    move v10, v5

    move v9, v6

    iget-object v7, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual/range {v7 .. v13}, Lcom/bigkoo/pickerview/e/b;->a(IIIIII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->n:Lcom/bigkoo/pickerview/TimePickerView$b;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/bigkoo/pickerview/e/b;->a:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/TimePickerView;->n:Lcom/bigkoo/pickerview/TimePickerView$b;

    iget-object v2, p0, Lcom/bigkoo/pickerview/TimePickerView;->h:Landroid/view/View;

    invoke-interface {v1, v0, v2}, Lcom/bigkoo/pickerview/TimePickerView$b;->a(Ljava/util/Date;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->h()V

    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->B:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/bigkoo/pickerview/TimePickerView;->q()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->N:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->h()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->a()V

    :goto_0
    return-void
.end method
