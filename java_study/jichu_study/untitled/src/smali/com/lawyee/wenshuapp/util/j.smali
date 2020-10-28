.class public Lcom/lawyee/wenshuapp/util/j;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/lawyee/wenshuapp/util/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lawyeecourtwensh"

    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/j;->a:Ljava/lang/String;

    const-string v0, "lawyeecourtwensh"

    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/lawyee/wenshuapp/util/j;
    .locals 1

    sget-object v0, Lcom/lawyee/wenshuapp/util/j;->c:Lcom/lawyee/wenshuapp/util/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lawyee/wenshuapp/util/j;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/util/j;-><init>()V

    sput-object v0, Lcom/lawyee/wenshuapp/util/j;->c:Lcom/lawyee/wenshuapp/util/j;

    :cond_0
    sget-object v0, Lcom/lawyee/wenshuapp/util/j;->c:Lcom/lawyee/wenshuapp/util/j;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const-string p2, "utf-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/j;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/lawyee/wenshuapp/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
