import { LightningElement, api } from 'lwc';

export default class QuickActionController extends LightningElement 
{
    @api recordId;

    sleepDelay = 2;

    constructor() 
    {
        super();

        this.isExecuting = false;
    }

    @api async invoke()
    {
        console.log('Button Pressed');

        if (this.isExecuting)
        {
            return;
        }
        
        this.isExecuting = true;

        this.execute();
        await this.sleep(1000 * this.sleepDelay);
        
        this.isExecuting = false;
    }
    sleep(ms)
    {
        return new Promise((resolve) => setTimeout(resolve, ms));
    }

    execute()
    {
        console.log('Executing...');
    }
}