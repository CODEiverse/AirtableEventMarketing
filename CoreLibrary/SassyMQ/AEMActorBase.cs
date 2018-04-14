

using RabbitMQ.Client;
using RabbitMQ.Client.Events;
using RabbitMQ.Client.MessagePatterns;
using SassyMQ.Lib.RabbitMQ;
using SassyMQ.AEM.Lib.RabbitMQ;
using SassyMQ.Lib.RabbitMQ.Payload;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using SassyMQ.AEM.Lib.RMQActors;

namespace SassyMQ.AEM.Lib
{
    public abstract class AEMActorBase : SMQActorBase<AEMPayload> 
    {
        public AEMActorBase(string allExchange, bool isAutoConnect) : base(allExchange, isAutoConnect)
        {
        }
    }
}