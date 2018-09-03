.class Lcom/sunrise/h/e;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/sunrise/h/d;->a()V

    const-string v0, "true"

    const-string v1, "fastjson.compatibleWithJavaBean"

    invoke-static {v1}, Lcom/sunrise/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sunrise/h/k;->a:Z

    const-string v0, "true"

    const-string v1, "fastjson.compatibleWithFieldName"

    invoke-static {v1}, Lcom/sunrise/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sunrise/h/k;->b:Z

    return-void
.end method
