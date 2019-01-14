public class TestClass{
  public static void test(){
    // 実行したいコマンド
    string command = "dir > test.txt";
    
    string arguments = "/c" + command;
    System.Diagnostics.Process p = new System.Diagnostics.Process();
    p.StartInfo.FileName = System.Environment.GetEnvironmentVariable("ComSpec");
    p.StartInfo.CreateNoWindow = true;
    p.StartInfo.Arguments = @arguments;
    p.Start();
    p.WaitForExit();
    p.Close();
  }
}