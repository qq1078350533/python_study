.class public Landroid/support/design/e/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Landroid/content/res/ColorStateList;

.field public final j:F

.field public final k:F

.field public final l:F

.field private final m:I

.field private n:Z

.field private o:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/e/b;->n:Z

    sget-object v1, Landroid/support/design/a$k;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Landroid/support/design/a$k;->TextAppearance_android_textSize:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/e/b;->a:F

    sget v1, Landroid/support/design/a$k;->TextAppearance_android_textColor:I

    invoke-static {p1, p2, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/e/b;->b:Landroid/content/res/ColorStateList;

    sget v1, Landroid/support/design/a$k;->TextAppearance_android_textColorHint:I

    invoke-static {p1, p2, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/e/b;->c:Landroid/content/res/ColorStateList;

    sget v1, Landroid/support/design/a$k;->TextAppearance_android_textColorLink:I

    invoke-static {p1, p2, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/e/b;->d:Landroid/content/res/ColorStateList;

    sget v1, Landroid/support/design/a$k;->TextAppearance_android_textStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/e/b;->e:I

    sget v1, Landroid/support/design/a$k;->TextAppearance_android_typeface:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/e/b;->f:I

    sget v1, Landroid/support/design/a$k;->TextAppearance_fontFamily:I

    sget v3, Landroid/support/design/a$k;->TextAppearance_android_fontFamily:I

    invoke-static {p2, v1, v3}, Landroid/support/design/e/a;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/e/b;->m:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/e/b;->g:Ljava/lang/String;

    sget v1, Landroid/support/design/a$k;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/e/b;->h:Z

    sget v0, Landroid/support/design/a$k;->TextAppearance_android_shadowColor:I

    invoke-static {p1, p2, v0}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/e/b;->i:Landroid/content/res/ColorStateList;

    sget p1, Landroid/support/design/a$k;->TextAppearance_android_shadowDx:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/design/e/b;->j:F

    sget p1, Landroid/support/design/a$k;->TextAppearance_android_shadowDy:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/design/e/b;->k:F

    sget p1, Landroid/support/design/a$k;->TextAppearance_android_shadowRadius:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/design/e/b;->l:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Landroid/support/design/e/b;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    iput-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/e/b;->g:Ljava/lang/String;

    iget v1, p0, Landroid/support/design/e/b;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/e/b;->f:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    iput-object v0, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/design/e/b;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/design/e/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/e/b;->a()V

    return-void
.end method

.method static synthetic a(Landroid/support/design/e/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/e/b;->n:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/e/b;->n:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Landroid/support/design/e/b;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    iget v0, p0, Landroid/support/design/e/b;->e:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TextAppearance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/design/e/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/design/e/b;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/e/b;->n:Z

    iget-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/design/e/b;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, p1}, Landroid/support/design/e/b;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/design/e/b;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/e/b;->n:Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p0, Landroid/support/design/e/b;->m:I

    new-instance v1, Landroid/support/design/e/b$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/support/design/e/b$1;-><init>(Landroid/support/design/e/b;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/support/v4/content/a/f;->a(Landroid/content/Context;ILandroid/support/v4/content/a/f$a;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TextAppearance"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading font "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/design/e/b;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_1
    return-void
.end method

.method public a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Landroid/support/design/e/b;->e:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    not-int p2, p2

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget p2, p0, Landroid/support/design/e/b;->a:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/e/b;->c(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V

    iget-object p1, p0, Landroid/support/design/e/b;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v0, p0, Landroid/support/design/e/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget p1, p0, Landroid/support/design/e/b;->l:F

    iget p3, p0, Landroid/support/design/e/b;->j:F

    iget v0, p0, Landroid/support/design/e/b;->k:F

    iget-object v1, p0, Landroid/support/design/e/b;->i:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, p0, Landroid/support/design/e/b;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V
    .locals 1

    invoke-static {}, Landroid/support/design/e/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/design/e/b;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/design/e/b;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/e/b;->a(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V

    iget-boolean p1, p0, Landroid/support/design/e/b;->n:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/design/e/b;->o:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
