// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.yzw = t0.Load(r0.w).xyz;
    r0.y = saturate(r4.y);
    r5.xyzw = r0.yyyy * float4(-0.236842006,-2.23684192,5,-0.597958028) + float4(1.47368503,1,4,2.11147189);
    r0.z = r0.y * r0.y;
    r0.w = saturate(r5.x * r0.z + r5.y);
    r0.w = r0.w * 0.0240000002 + 0.00100000005;
    r5.x = saturate(r2.w);
    r6.xyzw = r5.xxxx * float4(0.171669006,-1.70588195,17.8480759,0.0180890001) + float4(0.534213006,1,0.992793977,0.131810993);
    r5.y = r5.x * r5.x;
    r6.x = saturate(r6.x * r5.y + r6.y);
    r6.x = r6.x * 0.999000013 + 0.00100000005;
    r7.z = r6.x * r0.w;
    r6.xy = r5.xx * float2(-4.82432508,-0.357360989) + float2(1,0.207460999);
    r6.xy = r6.zw * r5.yy + r6.xy;
    r8.xyz = cmp(r5.xxx >= float3(0,0.273333013,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r5.xy = r8.xy + r8.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r5.xy = r5.xy * r6.xy;
    r5.xy = r5.xy + r5.xy;
    r0.w = saturate(r5.x + r5.y);
    r5.xy = float2(-0,-0.5) + r0.ww;
    r5.xy = saturate(r5.xy + r5.xy);
    r5.xy = float2(250,750) * r5.xy;
    r0.w = dot(float2(1,1), r5.xy);
    r5.x = saturate(3 * r1.w);
    r6.xy = r5.xx * float2(-0.351350993,-2.35135102) + float2(1.702703,1);
    r5.x = r5.x * r5.x;
    r5.x = saturate(r6.x * r5.x + r6.y);
    r5.x = r5.x * r5.z + 1;
    r7.w = r5.x * r0.w;
    r0.y = r0.y * -2.51351404 + 1;
    r0.y = saturate(r5.w * r0.z + r0.y);
    r5.xyz = r0.yyy * float3(0.286994994,0.092817001,0.133359998) + float3(0.0446310006,0.0304879993,0.346349001);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r7.xy = r3.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.x = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}