var should = require('should'),
    Processor = require('../../../lib/deploy.js');

describe('deploy',function(){

    it('should be ok for deploy kaola project',function(done){
        this.timeout(20000);
        new Processor({
            file:__dirname+'/release.conf',
            done:function(){
                done();
            }
        });
    });

});
