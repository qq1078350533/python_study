.class public final Landroid/support/v4/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/d/a$b;,
        Landroid/support/v4/d/a$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/d/d;

.field static final b:Landroid/support/v4/d/a;

.field static final c:Landroid/support/v4/d/a;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Landroid/support/v4/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/support/v4/d/e;->c:Landroid/support/v4/d/d;

    sput-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/d/a;->d:Ljava/lang/String;

    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/d/a;->e:Ljava/lang/String;

    new-instance v0, Landroid/support/v4/d/a;

    sget-object v1, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/d/a;-><init>(ZILandroid/support/v4/d/d;)V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a;

    new-instance v0, Landroid/support/v4/d/a;

    sget-object v1, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/d/a;-><init>(ZILandroid/support/v4/d/d;)V

    sput-object v0, Landroid/support/v4/d/a;->c:Landroid/support/v4/d/a;

    return-void
.end method

.method constructor <init>(ZILandroid/support/v4/d/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/support/v4/d/a;->f:Z

    iput p2, p0, Landroid/support/v4/d/a;->g:I

    iput-object p3, p0, Landroid/support/v4/d/a;->h:Landroid/support/v4/d/d;

    return-void
.end method

.method public static a()Landroid/support/v4/d/a;
    .locals 1

    new-instance v0, Landroid/support/v4/d/a$a;

    invoke-direct {v0}, Landroid/support/v4/d/a$a;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/d/a$a;->a()Landroid/support/v4/d/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/support/v4/d/d;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroid/support/v4/d/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    iget-boolean v0, p0, Landroid/support/v4/d/a;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v4/d/a;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object p1, Landroid/support/v4/d/a;->d:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/d/a;->f:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/support/v4/d/a;->b(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    :cond_2
    sget-object p1, Landroid/support/v4/d/a;->e:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/d/f;->a(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    new-instance v0, Landroid/support/v4/d/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/d/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/support/v4/d/a$b;->b()I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/CharSequence;Landroid/support/v4/d/d;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroid/support/v4/d/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    iget-boolean v0, p0, Landroid/support/v4/d/a;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v4/d/a;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object p1, Landroid/support/v4/d/a;->d:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/d/a;->f:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/support/v4/d/a;->c(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    :cond_2
    sget-object p1, Landroid/support/v4/d/a;->e:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .locals 2

    new-instance v0, Landroid/support/v4/d/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/d/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/support/v4/d/a$b;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/d/a;->h:Landroid/support/v4/d/d;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/d/a;->a(Ljava/lang/CharSequence;Landroid/support/v4/d/d;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;Landroid/support/v4/d/d;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/d/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/d/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    sget-object v1, Landroid/support/v4/d/e;->b:Landroid/support/v4/d/d;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/support/v4/d/e;->a:Landroid/support/v4/d/d;

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/support/v4/d/a;->b(Ljava/lang/CharSequence;Landroid/support/v4/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/d/a;->f:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    sget-object p2, Landroid/support/v4/d/e;->b:Landroid/support/v4/d/d;

    goto :goto_3

    :cond_5
    sget-object p2, Landroid/support/v4/d/e;->a:Landroid/support/v4/d/d;

    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/d/a;->a(Ljava/lang/CharSequence;Landroid/support/v4/d/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/d/a;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
