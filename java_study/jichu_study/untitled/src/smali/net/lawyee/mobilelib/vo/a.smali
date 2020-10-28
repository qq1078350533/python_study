.class public Lnet/lawyee/mobilelib/vo/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/lawyee/mobilelib/vo/a;->a:I

    const-string v0, ""

    iput-object v0, p0, Lnet/lawyee/mobilelib/vo/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilelib/vo/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lnet/lawyee/mobilelib/vo/a;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilelib/vo/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lnet/lawyee/mobilelib/vo/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
