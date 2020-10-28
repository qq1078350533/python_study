.class public Lnet/lawyee/mobilelib/filedownloader/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "lawyee"

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "/"

    const-string v1, "\\"

    const-string v2, "*"

    const-string v3, "?"

    const-string v4, "<"

    const-string v5, ">"

    const-string v6, "\""

    const-string v7, "|"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lawyee/mobilelib/filedownloader/a/b;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/lawyee/mobilelib/filedownloader/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/lawyee/mobilelib/filedownloader/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p0}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/lawyee/mobilelib/filedownloader/a/b;->b:Ljava/lang/String;

    sget-object p0, Lnet/lawyee/mobilelib/filedownloader/a/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->e(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/lawyee/mobilelib/filedownloader/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/lawyee/mobilelib/filedownloader/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sput-object p0, Lnet/lawyee/mobilelib/filedownloader/a/b;->c:Ljava/lang/String;

    :cond_2
    sget-object p0, Lnet/lawyee/mobilelib/filedownloader/a/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnet/lawyee/mobilelib/filedownloader/a/b;->e:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/lawyee/mobilelib/filedownloader/a/b;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p0}, Lnet/lawyee/mobilelib/filedownloader/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/tempdir"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sput-object p0, Lnet/lawyee/mobilelib/filedownloader/a/b;->d:Ljava/lang/String;

    :cond_2
    sget-object p0, Lnet/lawyee/mobilelib/filedownloader/a/b;->d:Ljava/lang/String;

    return-object p0
.end method
