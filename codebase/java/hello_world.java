/*Print Hello World and sleep for 10 seconds.*/

class hello_world {
    public static void main(String[] args) {
        System.out.println("Hello World");
        try {
            Thread.sleep(10000);
        } catch (InterruptedException ie)
        {
            ;
        }
    }
}
