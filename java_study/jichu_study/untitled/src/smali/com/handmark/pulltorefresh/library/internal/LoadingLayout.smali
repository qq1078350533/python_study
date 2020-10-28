.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ProgressBar;

.field protected final d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field protected final e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private f:Landroid/widget/FrameLayout;

.field private g:Z

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/handmark/pulltorefresh/library/d$e;->pull_to_refresh_header_vertical:I

    :goto_0
    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/handmark/pulltorefresh/library/d$e;->pull_to_refresh_header_horizontal:I

    goto :goto_0

    :goto_1
    sget v0, Lcom/handmark/pulltorefresh/library/d$d;->fl_inner:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v2, Lcom/handmark/pulltorefresh/library/d$d;->pull_to_refresh_text:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v2, Lcom/handmark/pulltorefresh/library/d$d;->pull_to_refresh_progress:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v2, Lcom/handmark/pulltorefresh/library/d$d;->pull_to_refresh_sub_text:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v2, Lcom/handmark/pulltorefresh/library/d$d;->pull_to_refresh_image:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v2, :cond_1

    const/16 p3, 0x50

    goto :goto_2

    :cond_1
    const/4 p3, 0x5

    :goto_2
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget p3, Lcom/handmark/pulltorefresh/library/d$f;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    sget p3, Lcom/handmark/pulltorefresh/library/d$f;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    sget p3, Lcom/handmark/pulltorefresh/library/d$f;->pull_to_refresh_release_label:I

    :goto_3
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_2
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v2, :cond_3

    const/16 p3, 0x30

    goto :goto_4

    :cond_3
    const/4 p3, 0x3

    :goto_4
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget p3, Lcom/handmark/pulltorefresh/library/d$f;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    sget p3, Lcom/handmark/pulltorefresh/library/d$f;->pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    sget p3, Lcom/handmark/pulltorefresh/library/d$f;->pull_to_refresh_from_bottom_release_label:I

    goto :goto_3

    :goto_5
    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-static {p0, p3}, Lcom/handmark/pulltorefresh/library/internal/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    sget v0, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v0, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p3, p3, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    :cond_5
    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    sget v0, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v0, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p3, p3, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    :cond_6
    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-direct {p0, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8

    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-direct {p0, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    const/4 p3, 0x0

    sget v0, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v1, :cond_b

    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableStart:I

    :goto_6
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_7

    :cond_a
    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "ptrDrawableTop"

    const-string p3, "ptrDrawableStart"

    invoke-static {p2, p3}, Lcom/handmark/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableTop:I

    goto :goto_6

    :cond_b
    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableEnd:I

    goto :goto_6

    :cond_c
    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "ptrDrawableBottom"

    const-string p3, "ptrDrawableEnd"

    invoke-static {p2, p3}, Lcom/handmark/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrDrawableBottom:I

    goto :goto_6

    :cond_d
    :goto_7
    if-nez p3, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_e
    invoke-virtual {p0, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSubTextAppearance(I)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(F)V

    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b()V

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final getContentSize()I
    .locals 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c()V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d()V

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    return-void
.end method
