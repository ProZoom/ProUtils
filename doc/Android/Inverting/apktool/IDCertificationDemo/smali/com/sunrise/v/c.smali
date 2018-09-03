.class public Lcom/sunrise/v/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Service"

    sput-object v0, Lcom/sunrise/v/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sunrise/v/c;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sunrise/v/d;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sunrise/v/d;

    invoke-direct {v0}, Lcom/sunrise/v/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sunrise/v/d;->a(I)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunrise/v/d;->a(Ljava/lang/Object;)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sunrise/v/c;->a(Lcom/sunrise/v/d;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sunrise/v/d;
    .locals 2

    const/4 v1, 0x3

    new-instance v0, Lcom/sunrise/v/d;

    invoke-direct {v0}, Lcom/sunrise/v/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sunrise/v/d;->a(I)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunrise/v/d;->a(Ljava/lang/Object;)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunrise/v/d;->a(Ljava/lang/Throwable;)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sunrise/v/c;->a(Lcom/sunrise/v/d;I)V

    return-object v0
.end method

.method public static varargs a([B)Lcom/sunrise/v/d;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sunrise/v/d;

    invoke-direct {v0}, Lcom/sunrise/v/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sunrise/v/d;->a(I)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunrise/v/d;->a(Ljava/lang/Object;)Lcom/sunrise/v/d;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sunrise/v/c;->a(Lcom/sunrise/v/d;I)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunrise/v/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/sunrise/v/d;I)V
    .locals 1

    new-instance v0, Lcom/sunrise/v/e;

    invoke-direct {v0, p0, p1}, Lcom/sunrise/v/e;-><init>(Lcom/sunrise/v/d;I)V

    invoke-static {v0}, Lcom/sunrise/s/a;->a(Lcom/sunrise/s/c;)V

    return-void
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/sunrise/v/c;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method
